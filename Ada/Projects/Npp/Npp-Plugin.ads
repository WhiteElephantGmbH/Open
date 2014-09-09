-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
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

package Npp.Plugin is

  type Callback is access procedure;

  Too_Many_Commands : exception;

  procedure Define (Name : Wide_String);

  function Name return System.Address;

  procedure Install (Set_Info         : Callback := null;
                     Tb_Modification  : Callback := null;
                     Ready            : Callback := null;
                     Buffer_Activated : Callback := null;
                     Buffer_Updated   : Callback := null);

  function Last_Dialog_Id return Win.INT;

  procedure Add_Notify_Handler (Handler  : Notify_Handler;
                                For_Code : Win.INT);

  procedure Add_Function (Name    : Wide_String;
                          Command : Callback;
                          Toolbar : Npp.Toolbar_Icons := Npp.No_Toolbar);

  function Handle return Win.HWND;

  function Opened (Filename : String) return Boolean;

  function Switched_To (Filename : String) return Boolean;

  function Edit_View return Win.HWND;

  function All_Files_Saved return Boolean;
  
end Npp.Plugin;