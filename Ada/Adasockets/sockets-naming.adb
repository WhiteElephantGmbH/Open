-----------------------------------------------------------------------------
--                                                                         --
--                         ADASOCKETS COMPONENTS                           --
--                                                                         --
--                      S O C K E T S . N A M I N G                        --
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

with Ada.Exceptions;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
with Interfaces.C;               use Interfaces.C;
with Interfaces.C.Strings;       use Interfaces.C.Strings;
with Sockets.Constants;          use Sockets.Constants;
with Sockets.Thin;               use Sockets.Thin;
with Sockets.Types;              use Sockets.Types;
with Sockets.Utils;              use Sockets.Utils;

package body Sockets.Naming is

   Default_Buffer_Size : constant := 16384;

   procedure Free is
      new Ada.Unchecked_Deallocation (String, String_Access);

   procedure Free is
      new Ada.Unchecked_Deallocation (char_array, char_array_access);

   function Allocate (Size : Positive := Default_Buffer_Size)
     return char_array_access;
   --  Allocate a buffer

   function Parse_Entry (Host : Hostent)
     return Host_Entry;
   --  Parse an entry

   procedure Raise_Naming_Error
     (Errno   : in Integer;
      Message : in String);
   --  Raise the exception Naming_Error with an appropriate error message

   protected Naming_Lock is
      entry Lock;
      procedure Unlock;
   private
      Locked : Boolean := False;
   end Naming_Lock;
   --  A locking object

   function Get_Peer (Socket : Socket_FD) return Sockaddr_In;
   function Get_Sock (Socket : Socket_FD) return Sockaddr_In;

   ----------------
   -- Address_Of --
   ----------------

   function Address_Of (Something : String)
     return Address
   is
   begin
      if Is_IP_Address (Something) then
         return Value (Something);
      else
         return Info_Of (Something) .Addresses (1);
      end if;
   end Address_Of;

   ------------
   -- Adjust --
   ------------

   procedure Adjust (Object : in out Host_Entry)
   is
      Aliases : String_Array renames Object.Aliases;
   begin
      Object.Name := new String'(Object.Name.all);
      for I in Aliases'range loop
         Aliases (I) := new String'(Aliases (I) .all);
      end loop;
   end Adjust;

   --------------
   -- Allocate --
   --------------

   function Allocate
     (Size : Positive := Default_Buffer_Size)
     return char_array_access
   is
   begin
      return new char_array (1 .. size_t (Size));
   end Allocate;

   -----------------
   -- Any_Address --
   -----------------

   function Any_Address return Address
   is
   begin
      return To_Address (Inaddr_Any);
   end Any_Address;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out Host_Entry)
   is
      Aliases : String_Array renames Object.Aliases;
   begin
      Free (Object.Name);
      for I in Aliases'range loop
         Free (Aliases (I));
      end loop;
   end Finalize;

   --------------
   -- Get_Peer --
   --------------

   function Get_Peer (Socket : Socket_FD) return Sockaddr_In is
      Name : aliased Sockaddr_In;
      Len  : aliased int := Name'size / 8;
   begin
      if C_Getpeername (Socket.FD, Name'address, Len'access) = Failure then
         Raise_Naming_Error (Errno, "");
      end if;
      return Name;
   end Get_Peer;

   -------------------
   -- Get_Peer_Addr --
   -------------------

   function Get_Peer_Addr (Socket : Socket_FD) return Types.In_Addr is
   begin
      return Get_Peer (Socket) .Sin_Addr;
   end Get_Peer_Addr;

   -------------------
   -- Get_Peer_Addr --
   -------------------

   function Get_Peer_Addr (Socket : Socket_FD) return Address is
   begin
      return To_Address (Get_Peer_Addr (Socket));
   end Get_Peer_Addr;

   -------------------
   -- Get_Peer_Port --
   -------------------

   function Get_Peer_Port (Socket : Socket_FD) return Positive is
   begin
      return Positive (Network_To_Port (Get_Peer (Socket) .Sin_Port));
   end Get_Peer_Port;

   --------------
   -- Get_Sock --
   --------------

   function Get_Sock (Socket : Socket_FD) return Sockaddr_In is
      Name : aliased Sockaddr_In;
      Len  : aliased int := Name'size / 8;
   begin
      if C_Getsockname (Socket.FD, Name'address, Len'access) = Failure then
         Raise_Naming_Error (Errno, "");
      end if;
      return Name;
   end Get_Sock;

   -------------------
   -- Get_Sock_Addr --
   -------------------

   function Get_Sock_Addr (Socket : Socket_FD) return In_Addr is
   begin
      return Get_Sock (Socket) .Sin_Addr;
   end Get_Sock_Addr;

   -------------------
   -- Get_Sock_Addr --
   -------------------

   function Get_Sock_Addr (Socket : Socket_FD) return Address is
   begin
      return To_Address (Get_Sock_Addr (Socket));
   end Get_Sock_Addr;

   -------------------
   -- Get_Sock_Port --
   -------------------

   function Get_Sock_Port (Socket : Socket_FD) return Positive is
   begin
      return Positive (Network_To_Port (Get_Sock (Socket) .Sin_Port));
   end Get_Sock_Port;

   ---------------
   -- Host_Name --
   ---------------

   function Host_Name return String
   is
      Buff   : char_array_access  := Allocate;
      Buffer : constant chars_ptr := To_Chars_Ptr (Buff);
      Res    : constant int       := C_Gethostname (Buffer, Buff'length);
   begin
      if Res = Failure then
         Free (Buff);
         Raise_Naming_Error (Errno, "");
      end if;
      declare
         Result : constant String := Value (Buffer);
      begin
         Free (Buff);
         return Result;
      end;
   end Host_Name;

   -----------
   -- Image --
   -----------

   function Image (Add : Address) return String
   is

      function Image (A : Address_Component) return String;
      --  Return the string corresponding to its argument without
      --  the leading space.

      -----------
      -- Image --
      -----------

      function Image (A : Address_Component)
        return String
      is
         Im : constant String := Address_Component'image (A);
      begin
         return Im (Im'first + 1 .. Im'last);
      end Image;

   begin
      return Image (Add.H1) & "." & Image (Add.H2) & "." &
        Image (Add.H3) & "." & Image (Add.H4);
   end Image;

   -----------
   -- Image --
   -----------

   function Image (Add : Types.In_Addr) return String is
   begin
      return Image (To_Address (Add));
   end Image;

   -------------
   -- Info_Of --
   -------------

   function Info_Of (Name : String)
     return Host_Entry
   is
      Res    : Hostent_Access;
      C_Name : chars_ptr := New_String (Name);
   begin
      Naming_Lock.Lock;
      Res := C_Gethostbyname (C_Name);
      Naming_Lock.Unlock;
      Free (C_Name);
      if Res = null then
         Raise_Naming_Error (Errno, Name);
      end if;
      declare
         Result : constant Host_Entry := Parse_Entry (Res.all);
      begin
         return Result;
      end;
   end Info_Of;

   -------------
   -- Info_Of --
   -------------

   function Info_Of (Addr : Address)
     return Host_Entry
   is
      function Convert is
         new Ada.Unchecked_Conversion (Source => In_Addr_Access,
                                       Target => chars_ptr);
      Temp    : aliased In_Addr    := To_In_Addr (Addr);
      C_Addr  : constant chars_ptr := Convert (Temp'unchecked_access);
      Res     : Hostent_Access;
   begin
      Naming_Lock.Lock;
      Res := C_Gethostbyaddr (C_Addr,
                              int (Temp'size / CHAR_BIT),
                              Constants.Af_Inet);
      Naming_Lock.Unlock;
      if Res = null then
         Raise_Naming_Error (Errno, Image (Addr));
      end if;
      declare
         Result : constant Host_Entry := Parse_Entry (Res.all);
      begin
         return Result;
      end;
   end Info_Of;

   ------------------------
   -- Info_Of_Name_Or_IP --
   ------------------------

   function Info_Of_Name_Or_IP (Something : String)
     return Host_Entry
   is
   begin
      if Is_IP_Address (Something) then
         return Info_Of (Value (Something));
      else
         return Info_Of (Something);
      end if;
   end Info_Of_Name_Or_IP;

   -------------------
   -- Is_Ip_Address --
   -------------------

   function Is_IP_Address (Something : String)
     return Boolean
   is
   begin
      for Index in Something'range loop
         declare
            Current : Character renames Something (Index);
         begin
            if (Current < '0'
                or else Current > '9')
              and then Current /= '.' then
               return False;
            end if;
         end;
      end loop;
      return True;
   end Is_IP_Address;

   -------------
   -- Name_Of --
   -------------

   function Name_Of (Something : String)
     return String
   is
      Hostent : constant Host_Entry := Info_Of_Name_Or_IP (Something);
   begin
      if Hostent.Name = null then
         Ada.Exceptions.Raise_Exception (Naming_Error'identity,
                                         "No name for " & Something);
      end if;
      return Hostent.Name.all;
   end Name_Of;

   -----------------
   -- Naming_Lock --
   -----------------

   protected body Naming_Lock is

      ----------
      -- Lock --
      ----------

      entry Lock when not Locked is
      begin
         Locked := True;
      end Lock;

      ------------
      -- Unlock --
      ------------

      procedure Unlock is
      begin
         Locked := False;
      end Unlock;

   end Naming_Lock;

   -----------------
   -- Parse_Entry --
   -----------------

   function Parse_Entry (Host : Hostent)
     return Host_Entry
   is
      C_Aliases : constant Thin.Chars_Ptr_Array    :=
        Chars_Ptr_Pointers.Value (Host.H_Aliases);
      C_Addr    : constant In_Addr_Access_Array :=
                                    In_Addr_Access_Pointers.Value
                                      (Host.H_Addr_List);
      Result    : Host_Entry (N_Aliases     => C_Aliases'length - 1,
                              N_Addresses => C_Addr'length - 1);
   begin
      Result.Name := new String'(Value (Host.H_Name));
      for I in 1 .. Result.Aliases'last loop
         declare
            Index   : constant Natural := I - 1 + Natural (C_Aliases'first);
            Current : chars_ptr renames C_Aliases (size_t (Index));
         begin
            Result.Aliases (I) := new String'(Value (Current));
         end;
      end loop;
      for I in Result.Addresses'range loop
         declare
            Index   : constant Natural := I - 1 + Natural (C_Addr'first);
            Current : In_Addr_Access renames C_Addr (Index);
         begin
            Result.Addresses (I) := To_Address (Current.all);
         end;
      end loop;
      return Result;
   end Parse_Entry;

   ------------------------
   -- Raise_Naming_Error --
   ------------------------

   procedure Raise_Naming_Error
     (Errno   : in Integer;
      Message : in String)
   is

      function Error_Message return String;
      --  Return the message according to Errno.

      -------------------
      -- Error_Message --
      -------------------

      function Error_Message return String is
      begin
         case Errno is
            when Host_Not_Found => return "Host not found";
            when Try_Again      => return "Try again";
            when No_Recovery    => return "No recovery";
            when No_Address     => return "No address";
            when others         => return "Unknown error" &
                                          Integer'image (Errno);
         end case;
      end Error_Message;

   begin
      Ada.Exceptions.Raise_Exception (Naming_Error'identity,
                                      Error_Message & ": " & Message);
   end Raise_Naming_Error;

   ----------------
   -- To_Address --
   ----------------

   function To_Address (Addr : In_Addr) return Address
   is
   begin
      return (H1 => Address_Component (Addr.S_B1),
              H2 => Address_Component (Addr.S_B2),
              H3 => Address_Component (Addr.S_B3),
              H4 => Address_Component (Addr.S_B4));
   end To_Address;

   ----------------
   -- To_In_Addr --
   ----------------

   function To_In_Addr (Addr : Address) return In_Addr
   is
   begin
      return (S_B1 => unsigned_char (Addr.H1),
              S_B2 => unsigned_char (Addr.H2),
              S_B3 => unsigned_char (Addr.H3),
              S_B4 => unsigned_char (Addr.H4));
   end To_In_Addr;

   -----------
   -- Value --
   -----------

   function Value (Add : String) return Address is
   begin
      if not Is_IP_Address (Add) then
	 Ada.Exceptions.Raise_Exception (Naming_Error'Identity,
					 Add & " is not an IP address");
      end if;
      declare
	 C_Add     : chars_ptr        := New_String (Add);
	 Converted : constant In_Addr := C_Inet_Addr (C_Add);
      begin
	 Free (C_Add);
	 return (H1 => Address_Component (Converted.S_B1),
		 H2 => Address_Component (Converted.S_B2),
		 H3 => Address_Component (Converted.S_B3),
		 H4 => Address_Component (Converted.S_B4));
      end;
   end Value;

end Sockets.Naming;
