-- *********************************************************************************************************************
-- *                           (c) 2014 by White Elephant GmbH, Schaffhausen, Switzerland                              *
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

with Client;
with Log;
with Npp.Plugin;
with System;
with Win.Dll;

package body Elephant_Dll is

  Wide_Nul : constant Wide_Character := Wide_Character'first;

  Promote_Toolbar        : aliased Npp.Toolbar_Icons;
  Promote_All_Toolbar    : aliased Npp.Toolbar_Icons;
  Show_Reference_Toolbar : aliased Npp.Toolbar_Icons;
  Undo_Reference_Toolbar : aliased Npp.Toolbar_Icons;
  Show_Usage_Toolbar     : aliased Npp.Toolbar_Icons;
  Show_Unused_Toolbar    : aliased Npp.Toolbar_Icons;


  procedure Load_Resources is
    Promote_Bitmap        : aliased constant String := "PromoteBmp" & Ascii.Nul;
    Promote_All_Bitmap    : aliased constant String := "PromoteAllBmp" & Ascii.Nul;
    Show_Reference_Bitmap : aliased constant String := "ShowReferenceBmp" & Ascii.Nul;
    Undo_Reference_Bitmap : aliased constant String := "UndoReferenceBmp" & Ascii.Nul;
    Show_Usage_Bitmap     : aliased constant String := "ShowUsageBmp" & Ascii.Nul;
    Show_Unused_Bitmap    : aliased constant String := "ShowUnusedBmp" & Ascii.Nul;
  begin
    Promote_Toolbar.Bmp := Win.Load_Bitmap (Win.Dll.Instance, Promote_Bitmap);
    Promote_All_Toolbar.Bmp := Win.Load_Bitmap (Win.Dll.Instance, Promote_All_Bitmap);
    Show_Reference_Toolbar.Bmp := Win.Load_Bitmap (Win.Dll.Instance, Show_Reference_Bitmap);
    Undo_Reference_Toolbar.Bmp := Win.Load_Bitmap (Win.Dll.Instance, Undo_Reference_Bitmap);
    Show_Usage_Toolbar.Bmp := Win.Load_Bitmap (Win.Dll.Instance, Show_Usage_Bitmap);
    Show_Unused_Toolbar.Bmp := Win.Load_Bitmap (Win.Dll.Instance, Show_Unused_Bitmap);
  end Load_Resources;


  Name : aliased constant Wide_String := "Elephant Plugin" & Wide_Nul;

  function Get_Name return System.Address is
  begin
    return Name'address;
  end Get_Name;


  procedure Promote is
  begin
    Client.Promote;
  end Promote;


  procedure Promote_All is
  begin
    Client.Promote (All_Projects => True);
  end Promote_All;


  procedure Show_Reference is
  begin
    Client.Show_Reference;
  end Show_Reference;


  procedure Undo_Reference is
  begin
    Client.Undo_Reference;
  end Undo_Reference;


  procedure Show_Usage is
  begin
    Client.Show_Usage;
  end Show_Usage;


  procedure Show_Unused is
  begin
    Client.Show_Unused;
  end Show_Unused;


  procedure Initialize is
  begin
    Load_Resources;
    Npp.Plugin.Add_Function ("Show Reference", Show_Reference'access, Show_Reference_Toolbar);
    Npp.Plugin.Add_Function ("Undo Reference", Undo_Reference'access, Undo_Reference_Toolbar);
    Npp.Plugin.Add_Function ("Show Usage", Show_Usage'access, Show_Usage_Toolbar);
    Npp.Plugin.Add_Function ("Show Unused", Show_Unused'access, Show_Unused_Toolbar);
    Npp.Plugin.Add_Function ("Promote All", Promote_All'access, Promote_All_Toolbar);
    Npp.Plugin.Add_Function ("Promote", Promote'access, Promote_Toolbar);
  exception
  when Item: others =>
    Log.Write ("Elephant_Dll.Initialize", Item);
  end Initialize;


  Is_Ready : Boolean := False;

  procedure Ready is
  begin
    Is_Ready := True;
    Client.Open_Project;
  exception
  when Item: others =>
    Log.Write ("Elephant_Dll.Ready", Item);
  end Ready;


  procedure Update is
  begin
    Client.Update;
  exception
  when Item: others =>
    Log.Write ("Elephant_Dll.Update", Item);
  end Update;


  procedure Activation is
  begin
    if Is_Ready then
      Client.Change_Project;
      Update;
    end if;
  exception
  when Item: others =>
    Log.Write ("Elephant_Dll.Activation", Item);
  end Activation;

begin
  Log.Open;
  Npp.Plugin.Define (Name => "Npp_Elephant");
  Npp.Plugin.Install (Set_Info         => Initialize'access,
                      Ready            => Ready'access,
                      Buffer_Activated => Activation'access,
                      Buffer_Updated   => Update'access);
end Elephant_Dll;
