-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *                                                                                                                   *
-- *    This program is free software; you can redistribute it and/or modify it under the terms of the GNU General     *
-- *    Public License as published by the Free Software Foundation; either version 2 of the License, or               *
-- *    (at your option) any later version.                                                                            *
-- *                                                                                                                   *
-- *    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the     *
-- *    implied warranty of MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE. See the GNU General Public License    *
-- *    for more details.                                                                                              *
-- *                                                                                                                   *
-- *    You should have received a copy of the GNU General Public License along with this program; if not, write to    *
-- *    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Unchecked_Conversion;
with Win32.Winver;
with Windows; pragma Elaborate_All (Windows);

package body Windows.Version is

  pragma Linker_Options ("-lversion");

  Nul : constant Character := Character'first;

  The_Language_Id : Unsigned.Longword := 16#040904E4#; -- US English, Multilingual codepage


  procedure Set_Language_Id (The_Id : Unsigned.Longword) is
  begin
    The_Language_Id := The_Id;
  end Set_Language_Id;

  The_Module  : constant Module_Entry := Module_From_Address (Set_Language_Id'address);
  Module_Name : constant String := Windows.Filename_Of (The_Module);


  type Fixedfileinfoaccess is access Win32.Winver.VS_FIXEDFILEINFO;

  function Convert is new Ada.Unchecked_Conversion (System.Address, Fixedfileinfoaccess);


  procedure Get_Value_For (The_Key       : String;
                           The_Filename  : String;
                           The_Data_Ptr  : out System.Address;
                           The_Data_Size : out Natural) is
    Key           : aliased constant String := The_Key & Nul;
    Filename      : aliased constant String := The_Filename & Nul;
    The_Handle    : aliased Win32.DWORD;
    The_Buffer    : aliased System.Address;
    The_Length    : aliased Win32.UINT;
    The_Info_Size : Win32.DWORD;
    use type Win32.DWORD;
    use type Win32.BOOL;
  begin
    The_Info_Size := Win32.Winver.GetFileVersionInfoSize (Win32.Addr(Filename), The_Handle'unchecked_access);
    if The_Info_Size = 0 then
      raise No_Version_Info;
    end if;
    declare
      The_Data : Unsigned.Byte_String (1 .. Natural (The_Info_Size));
    begin
      if Win32.Winver.GetFileVersionInfo (Win32.Addr(Filename), The_Handle,
                                          The_Info_Size, The_Data'address) = Win32.FALSE
      then
        raise No_Version_Info;
      end if;
      if Win32.Winver.VerQueryValue (The_Data'address, Win32.Addr(Key),
                                     The_Buffer'unchecked_access, The_Length'unchecked_access) = Win32.FALSE
      then
        raise No_Version_Info;
      end if;
    end;
    The_Data_Ptr := The_Buffer;
    The_Data_Size := Natural (The_Length);
  end Get_Value_For;


  function Value_Of (The_Key      : String;
                     The_Filename : String) return String is
    The_Full_Key : constant String := "\StringFileInfo\" & Unsigned.Hex_Image_Of(The_Language_Id) & "\" & The_Key;
    The_Buffer   : System.Address;
    The_Size     : Natural;
  begin
    Get_Value_For (The_Full_Key, The_Filename, The_Buffer, The_Size);
    declare
      type Stringptr is access String (1..The_Size);
      function Convert is new Ada.Unchecked_Conversion (System.Address, Stringptr);
    begin
      return Convert(The_Buffer)(1 .. The_Size - 1);
    end;
  end Value_Of;


  function Product_Name return String is
  begin
    return Value_Of ("ProductName", Module_Name);
  end Product_Name;


  function Product_Version return String is
  begin
    return Value_Of ("ProductVersion", Module_Name);
  end Product_Version;


  function Legal_Copyright return String is
  begin
    return Value_Of ("LegalCopyright", Module_Name);
  end Legal_Copyright;


  function Product_License return String is
  begin
    return Value_Of ("License", Module_Name);
  end Product_License;


  function Product_Version return Unsigned.Quadword is
    Root_Block : constant String := "\";
    The_Buffer : System.Address;
    The_Size   : Natural;
  begin
    Get_Value_For (Root_Block, Module_Name, The_Buffer, The_Size);
    return Unsigned.Quadword_Of (Unsigned.Longword(Convert(The_Buffer).dwProductVersionMS),
                                 Unsigned.Longword(Convert(The_Buffer).dwProductVersionLS));
  end Product_Version;


  function File_Version return Unsigned.Quadword is
    Root_Block : constant String := "\";
    The_Buffer : System.Address;
    The_Size   : Natural;
  begin
    Get_Value_For (Root_Block, Module_Name, The_Buffer, The_Size);
    return Unsigned.Quadword_Of (Unsigned.Longword(Convert(The_Buffer).dwFileVersionMS),
                                 Unsigned.Longword(Convert(The_Buffer).dwFileVersionLS));
  end File_Version;


end Windows.Version;
