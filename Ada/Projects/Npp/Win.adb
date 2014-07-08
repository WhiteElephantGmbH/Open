-- *********************************************************************************************************************
-- *                           (c) 2013 by White Elephant GmbH, Schaffhausen, Switzerland                              *
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

package body Win is

  function Make_Word (Low, High : BYTE) return WORD is
     use type Interfaces.C.unsigned_short;
  begin
     return (WORD (High) * 2 ** 8) + WORD (Low);
  end Make_Word;


  function Make_Long (Low, High : WORD) return DWORD is
    use Interfaces;
  begin
     return DWORD (Shift_Left (Unsigned_32 (High), 16) or
                   Unsigned_32 (Low));
  end Make_Long;


  function RGB (Red, Green, Blue : BYTE) return COLORREF is
  begin
     return COLORREF(Make_Long (Low  => Make_Word (Low  => Red,
                                                   High => Green),
                                High => Make_Word (Low => Blue,
                                                   High => 0)));
  end RGB;


  function Send_Message (Handle : HWND;
                         Msg    : UINT;
                         Wpar   : WPARAM;
                         Lpar   : LPARAM) return LRESULT is

    function Send_Message_A (Handle : HWND;
                             Msg    : UINT;
                             Wpar   : WPARAM;
                             Lpar   : LPARAM) return LRESULT
    with
      Import        => TRUE,
      Convention    => Stdcall,
      External_Name => "SendMessageA";

    use type LRESULT;

  begin
    return Send_Message_A (Handle, Msg, Wpar, Lpar);
  end Send_Message;


  procedure Send_Message (Handle : HWND;
                          Msg    : UINT;
                          Wpar   : WPARAM;
                          Lpar   : LPARAM) is
  begin
    if Send_Message (Handle, Msg, Wpar, Lpar) = OK then
      null;
    end if;
  end Send_Message;


  function Load_Bitmap (Instance    : HINSTANCE;
                        Bitmap_Name : String) return HBITMAP is

    function Load_Bitmap_A (Instance    : HINSTANCE;
                            Bitmap_Name : LPCSTR) return HBITMAP
    with
      Import        => TRUE,
      Convention    => Stdcall,
      External_Name => "LoadBitmapA";

  begin
    return Load_Bitmap_A (Instance    => Instance,
                          Bitmap_Name => Bitmap_Name(Bitmap_Name'first)'address);
  end Load_Bitmap;


  function Load_Library (Lib_File_Name : Wide_String) return HINSTANCE is

    function Load_Library_W (Lib_File_Name : LPCWSTR) return HINSTANCE
    with
      Import        => TRUE,
      Convention    => Stdcall,
      External_Name => "LoadLibraryW";

  begin
    return Load_Library_W (Lib_File_Name(Lib_File_Name'first)'address);
  end Load_Library;


  function Create_Window (Class_Name  : Wide_String;
                          Window_Name : Wide_String;
                          Style       : DWORD;
                          X           : INT;
                          Y           : INT;
                          Width       : INT;
                          Height      : INT;
                          Wnd_Parent  : HWND;
                          Menu        : HMENU;
                          Instance    : HINSTANCE;
                          Param       : LPVOID) return HWND is

    function Create_Window_Ex_W (Ex_Style    : DWORD;
                                 Class_Name  : LPCWSTR;
                                 Window_Name : LPCWSTR;
                                 Style       : DWORD;
                                 X           : INT;
                                 Y           : INT;
                                 Width       : INT;
                                 Height      : INT;
                                 Wnd_Parent  : HWND;
                                 Menu        : HMENU;
                                 Instance    : HINSTANCE;
                                 Param       : LPVOID) return HWND
    with
      Import        => TRUE,
      Convention    => Stdcall,
      External_Name => "CreateWindowExW";

  begin
    return Create_Window_Ex_W (Ex_Style    => 0,
                               Class_Name  => Class_Name(Class_Name'first)'address,
                               Window_Name => Window_Name(Window_Name'first)'address,
                               Style       => Style,
                               X           => X,
                               Y           => Y,
                               Width       => Width,
                               Height      => Height,
                               Wnd_Parent  => Wnd_Parent,
                               Menu        => Menu,
                               Instance    => Instance,
                               Param       => Param);
  end Create_Window;

end Win;
