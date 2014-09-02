------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--                 G W I N D O W S . C O M B O _ B O X E S                  --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.1.1.1 $
--                                                                          --
--                 Copyright (C) 1999 - 2002 David Botton                   --
--                                                                          --
-- This is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion. It is distributed in the hope that it will be useful,  but WITHOUT --
-- ANY WARRANTY;  without  even the  implied warranty of MERCHANTABILITY or --
-- FITNESS FOR A PARTICULAR PURPOSE.    See the GNU General  Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with this;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- More information about GWINDOWS and the most current public version can  --
-- be located on the web at http://www.adapower.com/gwindows                --
--                                                                          --
------------------------------------------------------------------------------

with GWindows.Base;

package GWindows.Combo_Boxes is

   -------------------------------------------------------------------------
   --  Combo_Box_Type
   -------------------------------------------------------------------------

   type Combo_Box_Type is new GWindows.Base.Base_Window_Type with private;
   type Combo_Box_Access is access all Combo_Box_Type;
   type Pointer_To_Combo_Box_Class is access all Combo_Box_Type'Class;

   -------------------------------------------------------------------------
   --  Combo_Box_Type - Creation Methods
   -------------------------------------------------------------------------

   procedure Create
     (Combo      : in out Combo_Box_Type;
      Parent     : in out GWindows.Base.Base_Window_Type'Class;
      Text       : in     GString;
      Left       : in     Integer;
      Top        : in     Integer;
      Width      : in     Integer;
      Height     : in     Integer;
      Sort       : in     Boolean                              := True;
      ID         : in     Integer                              := 0;
      Show       : in     Boolean                              := True;
      Is_Dynamic : in     Boolean                              := False);
   --  Create Combo Box

   -------------------------------------------------------------------------
   --  Combo_Box_Type - Properties
   -------------------------------------------------------------------------

   procedure Alternate_User_Interface (Combo : in out Combo_Box_Type;
                                       State : in     Boolean := True);
   function Alternate_User_Interface (Combo : in Combo_Box_Type)
                                     return Boolean;
   --  Use of alternative user interface for combo boxes (ie. use
   --  down arrow instead of F4 to drop lists)

   procedure Text_Limit (Combo : in out Combo_Box_Type;
                         Size  : in Natural);
   --  Limit amount of text that can be entered

   procedure Dropped (Combo : in out Combo_Box_Type;
                      State : in     Boolean := True);
   function Dropped (Combo : in Combo_Box_Type)
                    return Boolean;
   --  Drop state of list box

   procedure Get_Edit_Selection
     (Combo          : in out Combo_Box_Type;
      Start_Position :    out Natural;
      End_Position   :    out Natural);
   procedure Set_Edit_Selection
     (Combo          : in out Combo_Box_Type;
      Start_Position : in     Integer;
      End_Position   : in     Integer);
   --  Selection in edit box

   procedure Current (Combo : in Combo_Box_Type;
                      Item  : in Natural);
   function Current (Combo : in Combo_Box_Type) return Natural;
   --  Currently selected

   function Count (Combo : in Combo_Box_Type) return Natural;
   --  Returns number of items in combo box

   function Value_Length (Combo : in Combo_Box_Type;
                          Item  : in Positive)
                         return Natural;
   --  Returns the length of string value at Item

   function Value (Combo : in Combo_Box_Type;
                   Item  : in Positive)
                  return GString;
   --  Returns the string value at Item

   procedure Top_Item (Combo : in out Combo_Box_Type;
                       Item  : in     Positive);
   function Top_Item (Combo  : in Combo_Box_Type) return Natural;
   --  Top item displayed in combo box

   -------------------------------------------------------------------------
   --  Combo_Box_Type - Methods
   -------------------------------------------------------------------------

   procedure Add (Combo : in out Combo_Box_Type;
                  Value : in     GString);
   procedure Add (Combo : in out Combo_Box_Type;
                  After : in     Positive;
                  Value : in     GString);
   --  Add a value to the combo box

   procedure Delete (Combo : in out Combo_Box_Type;
                     Item  : in     Positive);
   --  Delete value at item

   procedure Cut (Combo : in out Combo_Box_Type);
   --  Send a cut command

   procedure Copy (Combo : in out Combo_Box_Type);
   --  Send a copy command

   procedure Paste (Combo : in out Combo_Box_Type);
   --  Send a paste command

   procedure Undo (Combo : in out Combo_Box_Type);
   --  Send an undo command

   procedure Clear (Combo : in out Combo_Box_Type);
   --  Clear combo box

   function Find (Combo      : in Combo_Box_Type;
                  Value      : in GString;
                  Start_Item : in Natural        := 0)
                 return Natural;
   --  Find a string in the combo box
   --  Return 0 if not found

   function Find_Exact (Combo      : in Combo_Box_Type;
                        Value      : in GString;
                        Start_Item : in Natural        := 0)
                       return Natural;
   --  Find a string in the combo box
   --  Return 0 if not found

   -------------------------------------------------------------------------
   --  Combo_Box_Type - Event Handlers
   -------------------------------------------------------------------------
   --  See Event Methods for details on each event

   procedure On_Double_Click_Handler (Combo  : in out Combo_Box_Type;
                                      Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Double_Click (Combo : in out Combo_Box_Type);

   procedure On_Selection_Change_Handler (Combo  : in out Combo_Box_Type;
                               Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Selection_Change (Combo : in out Combo_Box_Type);

   procedure On_Focus_Handler (Combo  : in out Combo_Box_Type;
                               Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Focus (Combo : in out Combo_Box_Type);

   procedure On_Lost_Focus_Handler (Combo  : in out Combo_Box_Type;
                                    Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Lost_Focus (Combo : in out Combo_Box_Type);

   procedure On_Out_Of_Memory_Handler
     (Combo  : in out Combo_Box_Type;
      Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Out_Of_Memory (Combo : in out Combo_Box_Type);

   procedure On_Edit_Change_Handler (Combo  : in out Combo_Box_Type;
                                     Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Edit_Change (Combo : in out Combo_Box_Type);

   procedure On_Edit_Update_Handler (Combo  : in out Combo_Box_Type;
                                     Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Edit_Update (Combo : in out Combo_Box_Type);

   procedure On_Drop_Down_Handler (Combo  : in out Combo_Box_Type;
                                   Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Drop_Down (Combo : in out Combo_Box_Type);

   procedure On_Close_Up_Handler (Combo  : in out Combo_Box_Type;
                                  Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Close_Up (Combo : in out Combo_Box_Type);

   procedure On_Select_End_OK_Handler
     (Combo  : in out Combo_Box_Type;
      Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Select_End_OK (Combo : in out Combo_Box_Type);

   procedure On_Select_End_Cancel_Handler
     (Combo  : in out Combo_Box_Type;
      Handler : in GWindows.Base.Action_Event);
   procedure Fire_On_Select_End_Cancel (Combo : in out Combo_Box_Type);

   -------------------------------------------------------------------------
   --  Combo_Box_Type - Event Methods
   -------------------------------------------------------------------------

   procedure On_Double_Click (Combo : in out Combo_Box_Type);
   --  Double Clicked

   procedure On_Selection_Change (Combo : in out Combo_Box_Type);
   --  Selection Changed

   procedure On_Focus (Combo : in out Combo_Box_Type);
   --  Received focus

   procedure On_Lost_Focus (Combo : in out Combo_Box_Type);
   --  Lost focus

   procedure On_Out_Of_Memory (Combo : in out Combo_Box_Type);
   --  Control can not allocate more memory

   procedure On_Edit_Change (Combo : in out Combo_Box_Type);
   --  Contents of edit box changed

   procedure On_Edit_Update (Combo : in out Combo_Box_Type);
   --  Contents of edit box will be updated

   procedure On_Drop_Down (Combo : in out Combo_Box_Type);
   --  Combo box list dropped

   procedure On_Close_Up (Combo : in out Combo_Box_Type);
   --  Combo box list closed

   procedure On_Select_End_OK (Combo : in out Combo_Box_Type);
   --  Selection made

   procedure On_Select_End_Cancel (Combo : in out Combo_Box_Type);
   --  Selection canceled

   -------------------------------------------------------------------------
   --  Combo_Box_Type - Event Framework Methods
   -------------------------------------------------------------------------
   --  These should be overiden with caution and only with a full
   --  understanding of the internals of the entire GWindows framework

   procedure On_Command
     (Window  : in out Combo_Box_Type;
      Code    : in     Integer;
      ID      : in     Integer;
      Control : in     GWindows.Base.Pointer_To_Base_Window_Class);
   --  Receives command messags from parent window

   -------------------------------------------------------------------------
   --  Drop_Down_Combo_Box_Type
   -------------------------------------------------------------------------

   type Drop_Down_Combo_Box_Type is new Combo_Box_Type with private;
   type Drop_Down_Combo_Box_Access is access all Drop_Down_Combo_Box_Type;

   -------------------------------------------------------------------------
   --  Drop_Down_Combo_Box_Type - Creation Methods
   -------------------------------------------------------------------------

   procedure Create
     (Combo      : in out Drop_Down_Combo_Box_Type;
      Parent     : in out GWindows.Base.Base_Window_Type'Class;
      Text       : in     GString;
      Left       : in     Integer;
      Top        : in     Integer;
      Width      : in     Integer;
      Height     : in     Integer;
      Sort       : in     Boolean                              := True;
      ID         : in     Integer                              := 0;
      Show       : in     Boolean                              := True;
      Is_Dynamic : in     Boolean                              := False);
   --  Create a drop down combo box

   -------------------------------------------------------------------------
   --  Drop_Down_List_Box_Type
   -------------------------------------------------------------------------

   type Drop_Down_List_Box_Type is new Combo_Box_Type with private;
   type Drop_Down_List_Box_Access is
     access all Drop_Down_List_Box_Type;

   -------------------------------------------------------------------------
   --  Drop_Down_List_Box_Type - Creation Methods
   -------------------------------------------------------------------------

   procedure Create
     (Combo      : in out Drop_Down_List_Box_Type;
      Parent     : in out GWindows.Base.Base_Window_Type'Class;
      Left       : in     Integer;
      Top        : in     Integer;
      Width      : in     Integer;
      Height     : in     Integer;
      Sort       : in     Boolean                              := True;
      ID         : in     Integer                              := 0;
      Show       : in     Boolean                              := True;
      Is_Dynamic : in     Boolean                              := False);
   --  Create a drop down list box

   procedure Text (Window : in out Drop_Down_List_Box_Type;
                   Text   : in     GString);

   function Text  (Window : in Drop_Down_List_Box_Type)
                  return GString;
   --  Get or set current selection / focus item

private

   type Combo_Box_Type is new GWindows.Base.Base_Window_Type with
      record
         On_Double_Click_Event      : GWindows.Base.Action_Event := null;
         On_Selection_Change_Event  : GWindows.Base.Action_Event := null;
         On_Focus_Event             : GWindows.Base.Action_Event := null;
         On_Lost_Focus_Event        : GWindows.Base.Action_Event := null;
         On_Out_Of_Memory_Event     : GWindows.Base.Action_Event := null;
         On_Edit_Change_Event       : GWindows.Base.Action_Event := null;
         On_Edit_Update_Event       : GWindows.Base.Action_Event := null;
         On_Drop_Down_Event         : GWindows.Base.Action_Event := null;
         On_Close_Up_Event          : GWindows.Base.Action_Event := null;
         On_Select_End_OK_Event     : GWindows.Base.Action_Event := null;
         On_Select_End_Cancel_Event : GWindows.Base.Action_Event := null;
      end record;

   type Drop_Down_Combo_Box_Type is new Combo_Box_Type with null record;

   type Drop_Down_List_Box_Type is new Combo_Box_Type with null record;

end GWindows.Combo_Boxes;
