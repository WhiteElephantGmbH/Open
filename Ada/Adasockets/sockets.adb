-----------------------------------------------------------------------------
--                                                                         --
--                         ADASOCKETS COMPONENTS                           --
--                                                                         --
--                             S O C K E T S                               --
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

with Ada.Characters.Latin_1;     use Ada.Characters.Latin_1;
with Ada.Unchecked_Deallocation;
with Sockets.Constants;          use Sockets.Constants;
with Sockets.Link;
pragma Warnings (Off, Sockets.Link);
with Sockets.Naming;             use Sockets.Naming;
with Sockets.Thin;               use Sockets.Thin;
with Sockets.Types;              use Sockets.Types;
with Sockets.Utils;              use Sockets.Utils;

package body Sockets is

   use Ada.Streams, Interfaces.C;

   Socket_Domain_Match : constant array (Socket_Domain) of int :=
     (PF_INET => Constants.Af_Inet,
      AF_INET => Constants.Af_Inet);  --  They hold the same value

   Socket_Type_Match : constant array (Socket_Type) of int :=
     (SOCK_STREAM => Constants.Sock_Stream,
      SOCK_DGRAM  => Constants.Sock_Dgram);

   Shutdown_Type_Match : constant array (Shutdown_Type) of int :=
     (Receive => 0,
      Send    => 1,
      Both    => 2);

   Socket_Level_Match : constant array (Socket_Level) of int :=
     (SOL_SOCKET => Constants.Sol_Socket,
      IPPROTO_IP => Constants.Ipproto_Ip);

   Socket_Option_Match : constant array (Socket_Option) of int :=
     (SO_REUSEADDR       => Constants.So_Reuseaddr,
      SO_REUSEPORT       => Constants.So_Reuseport,
      IP_MULTICAST_TTL   => Constants.Ip_Multicast_Ttl,
      IP_ADD_MEMBERSHIP  => Constants.Ip_Add_Membership,
      IP_DROP_MEMBERSHIP => Constants.Ip_Drop_Membership,
      IP_MULTICAST_LOOP  => Constants.Ip_Multicast_Loop,
      SO_SNDBUF          => Constants.So_Sndbuf,
      SO_RCVBUF          => Constants.So_Rcvbuf);

   Socket_Option_Size  : constant array (Socket_Option) of Natural :=
     (SO_REUSEADDR       => 4,
      SO_REUSEPORT       => 4,
      IP_MULTICAST_TTL   => 1,
      IP_ADD_MEMBERSHIP  => 8,
      IP_DROP_MEMBERSHIP => 8,
      IP_MULTICAST_LOOP  => 1,
      SO_SNDBUF          => 4,
      SO_RCVBUF          => 4);

   function "*" (Left : String; Right : Natural) return String;
   pragma Inline ("*");

   CRLF : constant String := CR & LF;

   procedure Refill (Socket : in Socket_FD'class);
   --  Refill the socket when in buffered mode by receiving one packet
   --  and putting it in the buffer.

   function To_String (S : Stream_Element_Array) return String;

   function Empty_Buffer (Socket : Socket_FD'class) return Boolean;
   --  Return True if buffered socket has an empty buffer

   ---------
   -- "*" --
   ---------

   function "*" (Left : String; Right : Natural) return String is
      Result : String (1 .. Left'length * Right);
      First  : Positive := 1;
      Last   : Natural  := First + Left'length - 1;
   begin
      for I in 1 .. Right loop
         Result (First .. Last) := Left;
         First := First + Left'length;
         Last  := Last + Left'length;
      end loop;
      return Result;
   end "*";

   -------------------
   -- Accept_Socket --
   -------------------

   procedure Accept_Socket (Socket     : in Socket_FD;
                            New_Socket : out Socket_FD)
   is
      Sin  : aliased Sockaddr_In;
      Size : aliased int := Sin'size / 8;
      Code : int;
   begin
      Code := C_Accept (Socket.FD, Sin'address, Size'access);
      if Code = Failure then
         Raise_With_Message ("Accept system call failed");
      else
         New_Socket :=
           (FD       => Code,
            Shutdown => (others => False),
            Buffer   => null);
      end if;
   end Accept_Socket;

   ----------
   -- Bind --
   ----------

   procedure Bind
     (Socket : in Socket_FD;
      Port   : in Natural;
      Host   : in String := "")
   is
      Sin : aliased Sockaddr_In;
   begin
      Sin.Sin_Family := Constants.Af_Inet;
      if Host /= "" then
         Sin.Sin_Addr   := To_In_Addr (Address_Of (Host));
      end if;
      Sin.Sin_Port   := Port_To_Network (unsigned_short (Port));
      if C_Bind (Socket.FD, Sin'address, Sin'size / 8) = Failure then
         Raise_With_Message ("Bind failed");
      end if;
   end Bind;

   -------------
   -- Connect --
   -------------

   procedure Connect
     (Socket : in Socket_FD;
      Host   : in String;
      Port   : in Positive)
   is
      Sin           : aliased Sockaddr_In;
      Current_Errno : Integer;
   begin
      Sin.Sin_Family := Constants.Af_Inet;
      Sin.Sin_Addr   := To_In_Addr (Address_Of (Host));
      Sin.Sin_Port   := Port_To_Network (unsigned_short (Port));
      if C_Connect (Socket.FD, Sin'address, Sin'size / 8) = Failure then
         Current_Errno := Thin.Errno;
         if Current_Errno = Constants.Econnrefused then
            raise Connection_Refused;
         else
            Raise_With_Message
              ("Connection failed (errno was" &
               Integer'image (Current_Errno) & ')',
              False);
         end if;
      end if;
   end Connect;

   ---------------------------
   -- Customized_Setsockopt --
   ---------------------------

   procedure Customized_Setsockopt (Socket : in Socket_FD'class;
                                    Optval : in Opt_Type)
   is
   begin
      pragma Assert (Optval'size / 8 = Socket_Option_Size (Optname));
      if C_Setsockopt (Socket.FD, Socket_Level_Match (Level),
                       Socket_Option_Match (Optname),
                       Optval'address, Optval'size / 8) = Failure
      then
         Raise_With_Message ("Setsockopt failed");
      end if;
   end Customized_Setsockopt;

   ------------------
   -- Empty_Buffer --
   ------------------

   function Empty_Buffer (Socket : Socket_FD'class) return Boolean is
   begin
      return Socket.Buffer.First > Socket.Buffer.Last;
   end Empty_Buffer;

   ---------
   -- Get --
   ---------

   function Get (Socket : Socket_FD'class) return String
   is
   begin
      if Socket.Buffer /= null and then not Empty_Buffer (Socket) then
         declare
            S : constant String :=
              To_String (Socket.Buffer.Content
                         (Socket.Buffer.First .. Socket.Buffer.Last));
         begin
            Socket.Buffer.First := Socket.Buffer.Last + 1;
            return S;
         end;
      else
         return To_String (Receive (Socket));
      end if;
   end Get;

   --------------
   -- Get_Char --
   --------------

   function Get_Char (Socket : Socket_FD'class) return Character is
      C : Stream_Element_Array (0 .. 0);
   begin
      if Socket.Buffer = null then
         --  Unbuffered mode

         Receive (Socket, C);
      else
         --  Buffered mode

         if Empty_Buffer (Socket) then
            Refill (Socket);
         end if;

         C (0) := Socket.Buffer.Content (Socket.Buffer.First);
         Socket.Buffer.First := Socket.Buffer.First + 1;

      end if;

      return Character'val (C (0));
   end Get_Char;

   ------------
   -- Get FD --
   ------------

   function Get_FD (Socket : in Socket_FD)
     return Interfaces.C.int
   is
   begin
      return Socket.FD;
   end Get_FD;

   --------------
   -- Get_Line --
   --------------

   procedure Get_Line
     (Socket : Socket_FD'class;
      Str    : out String;
      Last   : out Natural)
   is
      Index  : Positive := Str'first;
      Char   : Character;
   begin
      loop
         Char := Get_Char (Socket);
         if Char = LF then
            Last := Index - 1;
            return;
         elsif Char /= CR then
            Str (Index) := Char;
            Index := Index + 1;
            if Index > Str'last then
               Last := Str'last;
               return;
            end if;
         end if;
      end loop;
   end Get_Line;

   --------------
   -- Get_Line --
   --------------

   function Get_Line
     (Socket : Socket_FD'class;  Max_Length : Positive := 2048)
     return String
   is
      Result : String (1 .. Max_Length);
      Last   : Natural;
   begin
      Get_Line (Socket, Result, Last);
      return Result (1 .. Last);
   end Get_Line;

   ----------------
   -- Getsockopt --
   ----------------

   procedure Getsockopt
     (Socket  : in  Socket_FD'class;
      Level   : in  Socket_Level := SOL_SOCKET;
      Optname : in  Socket_Option;
      Optval  : out Integer)
   is
      Len : aliased int;
   begin
      case Socket_Option_Size (Optname) is

         when 1 =>
            declare
               C_Char_Optval : aliased char;
            begin
               pragma Assert (C_Char_Optval'size = 8);
               Len := 1;
               if C_Getsockopt (Socket.FD, Socket_Level_Match (Level),
                                Socket_Option_Match (Optname),
                                C_Char_Optval'address, Len'access) = Failure
               then
                  Raise_With_Message ("Getsockopt failed");
               end if;
               Optval := char'pos (C_Char_Optval);
            end;

         when 4 =>
            declare
               C_Int_Optval : aliased int;
            begin
               pragma Assert (C_Int_Optval'size = 32);
               Len := 4;
               if C_Getsockopt (Socket.FD, Socket_Level_Match (Level),
                                Socket_Option_Match (Optname),
                                C_Int_Optval'address, Len'access) = Failure
               then
                  Raise_With_Message ("Getsockopt failed");
               end if;
               Optval := Integer (C_Int_Optval);

            end;

         when others =>
            Raise_With_Message ("Getsockopt called with wrong arguments",
                                False);

      end case;
   end Getsockopt;

   ------------
   -- Listen --
   ------------

   procedure Listen
     (Socket     : in Socket_FD;
      Queue_Size : in Positive := 5)
   is
   begin
      if C_Listen (Socket.FD, int (Queue_Size)) = Failure then
         Raise_With_Message ("Listen failed");
      end if;
   end Listen;

   --------------
   -- New_Line --
   --------------

   procedure New_Line (Socket : in Socket_FD'class;
                       Count  : in Natural := 1)
   is
   begin
      Put (Socket, CRLF * Count);
   end New_Line;

   ---------
   -- Put --
   ---------

   procedure Put (Socket : in Socket_FD'class;
                  Str    : in String)
   is
      Stream : Stream_Element_Array (Stream_Element_Offset (Str'first) ..
                                     Stream_Element_Offset (Str'last));
   begin
      for I in Str'range loop
         Stream (Stream_Element_Offset (I)) :=
           Stream_Element'val (Character'pos (Str (I)));
      end loop;
      Send (Socket, Stream);
   end Put;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (Socket : in Socket_FD'class; Str : in String)
   is
   begin
      Put (Socket, Str & CRLF);
   end Put_Line;

   -------------
   -- Receive --
   -------------

   function Receive (Socket : Socket_FD; Max : Stream_Element_Count := 4096)
     return Stream_Element_Array
   is
      Buffer  : Stream_Element_Array (1 .. Max);
      Addr    : aliased Sockaddr_In;
      Addrlen : aliased int := Addr'size / 8;
      Count   : int;
   begin
      if Socket.Shutdown (Receive) then
         raise Connection_Closed;
      end if;
      Count := C_Recvfrom (Socket.FD, Buffer'address, Buffer'length, 0,
                           Addr'address, Addrlen'access);
      if Count < 0 then
         Raise_With_Message ("Receive error");
      elsif Count = 0 then
         raise Connection_Closed;
      end if;
      return Buffer (1 .. Stream_Element_Offset (Count));
   end Receive;

   -------------
   -- Receive --
   -------------

   procedure Receive (Socket : in Socket_FD'class;
                      Data   : out Stream_Element_Array)
   is
      Index   : Stream_Element_Offset := Data'first;
      Rest    : Stream_Element_Count  := Data'length;
      Addr    : aliased Sockaddr_In;
      Addrlen : aliased int := Addr'size / 8;
      Count   : int;
   begin
      while Rest > 0 loop
         Count := C_Recvfrom (Socket.FD, Data (Index) 'address,
                              int (Rest), 0, Addr'address, Addrlen'access);

         if Count < 0 then
            Raise_With_Message ("Receive error");
         elsif Count = 0 then
            raise Connection_Closed;
         end if;

         Index := Index + Stream_Element_Count (Count);
         Rest  := Rest - Stream_Element_Count (Count);
      end loop;
   end Receive;

   ------------------
   -- Receive_Some --
   ------------------

   procedure Receive_Some (Socket : in Socket_FD'class;
                           Data   : out Stream_Element_Array;
                           Last   : out Stream_Element_Offset)
   is
      Addr    : aliased Sockaddr_In;
      Addrlen : aliased int := Addr'size / 8;
      Count   : int;
   begin
      Count := C_Recvfrom (Socket.FD, Data (Data'first) 'address,
                           int (Data'length), 0,
                           Addr'address, Addrlen'access);
      if Count < 0 then
         Raise_With_Message ("Receive error");
      elsif Count = 0 then
         raise Connection_Closed;
      end if;
      Last := Data'first + Stream_Element_Count (Count) - 1;
   end Receive_Some;

   ------------
   -- Refill --
   ------------

   procedure Refill
     (Socket : in Socket_FD'class)
   is
   begin
      pragma Assert (Socket.Buffer /= null);
      Receive_Some (Socket, Socket.Buffer.Content, Socket.Buffer.Last);
      Socket.Buffer.First := 0;
   end Refill;

   ----------
   -- Send --
   ----------

   procedure Send (Socket : in Socket_FD;
                   Data   : in Stream_Element_Array)
   is
      Index : Stream_Element_Offset  := Data'first;
      Rest  : Stream_Element_Count   := Data'length;
      Count : int;
   begin
      if Socket.Shutdown (Send) then
         raise Connection_Closed;
      end if;
      while Rest > 0 loop
         Count := C_Send (Socket.FD, Data (Index) 'address, int (Rest), 0);
         if Count <= 0 then
            --  Count could be zero if the socket was in non-blocking mode
            --  and the output buffers were full. Since we do not support
            --  non-blocking mode, this is an error.

            raise Connection_Closed;
         end if;
         Index := Index + Stream_Element_Count (Count);
         Rest  := Rest - Stream_Element_Count (Count);
      end loop;
   end Send;

   ----------------
   -- Set_Buffer --
   ----------------

   procedure Set_Buffer
     (Socket : in out Socket_FD'class;
      Length : in Positive := 1500)
   is
   begin
      Unset_Buffer (Socket);
      Socket.Buffer := new Buffer_Type (Stream_Element_Count (Length));
   end Set_Buffer;

   ----------------
   -- Setsockopt --
   ----------------

   procedure Setsockopt
     (Socket  : in Socket_FD'class;
      Level   : in Socket_Level := Sol_Socket;
      Optname : in Socket_Option;
      Optval  : in Integer)
   is
   begin
      case Socket_Option_Size (Optname) is

         when 1 =>
            declare
               C_Char_Optval : aliased char := char'val (Optval);
            begin
               pragma Assert (C_Char_Optval'size = 8);
               if C_Setsockopt (Socket.FD, Socket_Level_Match (Level),
                                Socket_Option_Match (Optname),
                                C_Char_Optval'address, 1) = Failure
               then
                  Raise_With_Message ("Setsockopt failed");
               end if;
            end;

         when 4 =>
            declare
               C_Int_Optval : aliased int := int (Optval);
            begin
               pragma Assert (C_Int_Optval'size = 32);
               if C_Setsockopt (Socket.FD, Socket_Level_Match (Level),
                                Socket_Option_Match (Optname),
                                C_Int_Optval'address, 4) = Failure
               then
                  Raise_With_Message ("Setsockopt failed");
               end if;
            end;

         when others =>
            Raise_With_Message ("Setsockopt called with wrong arguments",
                                False);

      end case;
   end Setsockopt;

   --------------
   -- Shutdown --
   --------------

   procedure Shutdown (Socket : in out Socket_FD;
                       How    : in Shutdown_Type := Both)
   is
   begin
      if How /= Both then
         Socket.Shutdown (How) := True;
      else
         Socket.Shutdown := (others => True);
      end if;
      C_Shutdown (Socket.FD, Shutdown_Type_Match (How));
      if Socket.Shutdown (Receive) and then Socket.Shutdown (Send) then
         declare
            Unused_Result : constant int := C_Close (Socket.FD);
         begin
            Unset_Buffer (Socket);
         end;
      end if;
   end Shutdown;

   ------------
   -- Socket --
   ------------

   procedure Socket
     (Sock   : out Socket_FD;
      Domain : in Socket_Domain := PF_INET;
      Typ    : in Socket_Type   := SOCK_STREAM)
   is
      Result : constant int :=
        C_Socket (Socket_Domain_Match (Domain), Socket_Type_Match (Typ), 0);
   begin
      if Result = Failure then
         Raise_With_Message ("Unable to create socket");
      end if;
      Sock := (FD => Result, Shutdown => (others => False), Buffer => null);
   end Socket;

   ----------------
   -- Socketpair --
   ----------------

   procedure Socketpair
     (Read_End  : out Socket_FD;
      Write_End : out Socket_FD;
      Domain    : in Socket_Domain := PF_INET;
      Typ       : in Socket_Type   := SOCK_STREAM)
   is
      Filedes : aliased Two_Int;
      Result  : constant int :=
        C_Socketpair (Socket_Domain_Match (Domain),
                      Socket_Type_Match (Typ), 0,
                      Filedes'address);
   begin
      if Result = Failure then
         Raise_With_Message ("Unable to create socket");
      end if;
      Read_End  := (FD     => Filedes (0), Shutdown => (others => False),
                    Buffer => null);
      Write_End := (FD     => Filedes (1), Shutdown => (others => False),
                    Buffer => null);
   end Socketpair;

   ---------------
   -- To_String --
   ---------------

   function To_String (S : Stream_Element_Array) return String is
      Result : String (1 .. S'length);
   begin
      for I in Result'range loop
         Result (I) :=
           Character'val (Stream_Element'pos
                          (S (Stream_Element_Offset (I) + S'first - 1)));
      end loop;
      return Result;
   end To_String;

   ------------------
   -- Unset_Buffer --
   ------------------

   procedure Unset_Buffer (Socket : in out Socket_FD'class) is
      procedure Free is
         new Ada.Unchecked_Deallocation (Buffer_Type, Buffer_Access);
   begin
      Free (Socket.Buffer);
   end Unset_Buffer;

end Sockets;
