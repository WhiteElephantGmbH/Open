-----------------------------------------------------------------------------
--                                                                         --
--                         ADASOCKETS COMPONENTS                           --
--                                                                         --
--                   S O C K E T S . M U L T I C A S T                     --
--                                                                         --
--                                B o d y                                  --
--                                                                         --
--                        $ReleaseVersion: 0.1.6 $                         --
--                                                                         --
--        Copyright (C) 1998,1999 Samuel Tardieu <sam@rfc1149.net>         --
--             Copyright (C) 1999-2003 ENST http://www.enst.fr/            --
--                                                                         --
--   AdaSockets is free software; you can  redistribute it and/or modify   --
--   it  under terms of the GNU  General  Public License as published by   --
--   the Free Software Foundation; either version 2, or (at your option)   --
--   any later version.   AdaSockets is distributed  in the hope that it   --
--   will be useful, but WITHOUT ANY  WARRANTY; without even the implied   --
--   warranty of MERCHANTABILITY   or FITNESS FOR  A PARTICULAR PURPOSE.   --
--   See the GNU General Public  License  for more details.  You  should   --
--   have received a copy of the  GNU General Public License distributed   --
--   with AdaSockets; see   file COPYING.  If  not,  write  to  the Free   --
--   Software  Foundation, 59   Temple Place -   Suite  330,  Boston, MA   --
--   02111-1307, USA.                                                      --
--                                                                         --
--   As a special exception, if  other  files instantiate generics  from   --
--   this unit, or  you link this  unit with other  files to produce  an   --
--   executable,  this  unit does  not  by  itself cause  the  resulting   --
--   executable to be  covered by the  GNU General Public License.  This   --
--   exception does  not  however invalidate any  other reasons  why the   --
--   executable file might be covered by the GNU Public License.           --
--                                                                         --
--   The main repository for this software is located at:                  --
--       http://www.rfc1149.net/devel/adasockets                           --
--                                                                         --
--   If you have any question, please send a mail to                       --
--       Samuel Tardieu <sam@rfc1149.net>                                  --
--                                                                         --
-----------------------------------------------------------------------------

with Ada.Exceptions;    use Ada.Exceptions;
with Interfaces.C;      use Interfaces.C;
with Sockets;
pragma Elaborate_All (Sockets);
with Sockets.Constants; use Sockets.Constants;
with Sockets.Naming;    use Sockets.Naming;
with Sockets.Thin;      use Sockets.Thin;
with Sockets.Types;     use Sockets.Types;
with Sockets.Utils;     use Sockets.Utils;

package body Sockets.Multicast is

   use Ada.Streams;

   procedure Setsockopt_Add_Membership is
      new Customized_Setsockopt (IPPROTO_IP, IP_ADD_MEMBERSHIP, Ip_Mreq);

   function Create_Multicast_Socket
     (Group      : String;
      Port       : Positive;
      Local_Port : Natural;
      TTL        : Positive := 16;
      Self_Loop  : Boolean  := True)
     return Multicast_Socket_FD;

   -----------------------------
   -- Create_Multicast_Socket --
   -----------------------------

   function Create_Multicast_Socket
     (Group      : String;
      Port       : Positive;
      Local_Port : Natural;
      TTL        : Positive := 16;
      Self_Loop  : Boolean  := True)
     return Multicast_Socket_FD
   is
      Result      : Multicast_Socket_FD;
      Mreq        : aliased Ip_Mreq;
      C_Self_Loop : Integer;
   begin
      Socket (Socket_FD (Result), PF_INET, SOCK_DGRAM);
      if Self_Loop then
         C_Self_Loop := 1;
      else
         C_Self_Loop := 0;
      end if;
      Setsockopt (Result, SOL_SOCKET, SO_REUSEADDR, 1);
      if Constants.So_Reuseport /= -1 then
        Setsockopt (Result, SOL_SOCKET, SO_REUSEPORT, 1);
      end if;
      Bind (Result, Local_Port);
      Mreq.Imr_Multiaddr := To_In_Addr (Address_Of (Group));
      Setsockopt_Add_Membership (Result, Mreq);
      Setsockopt (Result, IPPROTO_IP, IP_MULTICAST_TTL, TTL);
      Setsockopt (Result, IPPROTO_IP, IP_MULTICAST_LOOP, C_Self_Loop);
      Result.Target.Sin_Family := Constants.Af_Inet;
      Result.Target.Sin_Port := Port_To_Network (unsigned_short (Port));
      Result.Target.Sin_Addr := To_In_Addr (Address_Of (Group));
      return Result;
   end Create_Multicast_Socket;

   -----------------------------
   -- Create_Multicast_Socket --
   -----------------------------

   function Create_Multicast_Socket
     (Group     : String;
      Port      : Positive;
      TTL       : Positive := 16;
      Self_Loop : Boolean  := True)
     return Multicast_Socket_FD
   is
   begin
      return Create_Multicast_Socket
                (Group      => Group,
                 Port       => Port,
                 Local_Port => Port,
                 TTL        => TTL,
                 Self_Loop  => Self_Loop);
   end Create_Multicast_Socket;

   -----------------------------
   -- Create_Multicast_Socket --
   -----------------------------

   function Create_Multicast_Socket
     (Group      : String;
      Port       : Positive;
      Local_Port : Natural;
      TTL        : Positive := 16)
     return Multicast_Socket_FD
   is
   begin
      return Create_Multicast_Socket
                (Group      => Group,
                 Port       => Port,
                 Local_Port => Local_Port,
                 TTL        => TTL,
                 Self_Loop  => False);
   end Create_Multicast_Socket;

   ----------
   -- Send --
   ----------

   procedure Send (Socket : in Multicast_Socket_FD;
                   Data   : in Stream_Element_Array)
   is
      Sin   : aliased Sockaddr_In   := Socket.Target;
      Index : Stream_Element_Offset := Data'first;
      Rest  : Stream_Element_Count  := Data'length;
      Count : int;
   begin
      while Rest > 0 loop
         Count := C_Sendto (Socket.FD,
                            Data (Index) 'address,
                            int (Rest),
                            0,
                            Sin'address,
                            Sin'size / 8);
         if Count < 0 then
            Raise_With_Message ("Send failed");
         elsif Count = 0 then
            raise Connection_Closed;
         end if;
         Index := Index + Stream_Element_Count (Count);
         Rest  := Rest - Stream_Element_Count (Count);
      end loop;
   end Send;

   ------------
   -- Socket --
   ------------

   procedure Socket
     (Sock   : out Multicast_Socket_FD;
      Domain : in Socket_Domain := PF_INET;
      Typ    : in Socket_Type   := SOCK_STREAM)
   is
   begin
      Raise_Exception (Program_Error'identity,
                       "Use Create_Multicast_Socket instead");
      Sock := Sock; -- To keep the compiler happy
   end Socket;

end Sockets.Multicast;