------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--                      G W I N D O W S . P A N E L S                       --
--                                                                          --
--                                 B o d y                                  --
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

package body GWindows.Packing_Boxes is

   -----------------
   -- Fill_Height --
   -----------------

   procedure Fill_Height
     (Window : in out Packing_Box_Type;
      State  : in     Boolean            := True)
   is
   begin
      Window.Fill_Height := State;
   end Fill_Height;

   -----------------
   -- Fill_Height --
   -----------------

   function Fill_Height (Window : in Packing_Box_Type) return Boolean is
   begin
      return Window.Fill_Height;
   end Fill_Height;

   ----------------
   -- Fill_Width --
   ----------------

   procedure Fill_Width
     (Window : in out Packing_Box_Type;
      State  : in     Boolean            := True)
   is
   begin
      Window.Fill_Width := State;
   end Fill_Width;

   ----------------
   -- Fill_Width --
   ----------------

   function Fill_Width (Window : in Packing_Box_Type) return Boolean is
   begin
      return Window.Fill_Width;
   end Fill_Width;

   ------------
   -- Insets --
   ------------

   procedure Insets
     (Window : in out Packing_Box_Type;
      Rect   : in     GWindows.Types.Rectangle_Type)
   is
   begin
      Window.Insets := Rect;
   end Insets;

   ------------
   -- Insets --
   ------------

   function Insets
     (Window : in Packing_Box_Type)
      return GWindows.Types.Rectangle_Type
   is
   begin
      return Window.Insets;
   end Insets;

   -------------
   -- On_Size --
   -------------

   procedure On_Size
     (Window : in out Packing_Box_Type;
      Width  : in     Integer;
      Height : in     Integer)
   is
      pragma Warnings (Off, Width);
      pragma Warnings (Off, Height);
   begin
      Pack (Window);
   end On_Size;

   ----------
   -- Pack --
   ----------

   procedure Pack (Window : in out Packing_Box_Type) is
      use GWindows.Base;

      Control_Width  : Natural;
      Control_Height : Natural;
      Child_Count    : Natural := 0;
      Total_Width    : Natural := 0;
      Total_Height   : Natural := 0;
      Current        : Natural;

      procedure Count_Children (Child : Pointer_To_Base_Window_Class);
      --  Call back enumeration Count number of children

      procedure Size_Children (Child : Pointer_To_Base_Window_Class);
      --  Call back enumeration function for sizing children

      procedure Pack_Children (Child : Pointer_To_Base_Window_Class);
      --  Call back enumeration function for packing children

      procedure Count_Children (Child : Pointer_To_Base_Window_Class) is
      begin
         Child_Count := Child_Count + 1;
         Total_Width := Total_Width + Client_Area_Width (Child.all);
         Total_Height := Total_Height + Client_Area_Height (Child.all);
      end Count_Children;

      procedure Size_Children (Child : Pointer_To_Base_Window_Class) is
      begin
         if Window.Fill_Height then
            Height (Child.all, Control_Height);
         end if;

         if Window.Fill_Width then
            Width (Child.all, Control_Width);
         end if;
      exception
         when others =>
            null; -- out of bounds windows ignored
      end Size_Children;

      procedure Pack_Children (Child : Pointer_To_Base_Window_Class) is
      begin
         if
           Window.Direction = Horizontal or
           Window.Direction = Horizontal_From_Center or
           Window.Direction = Horizontal_From_Right
         then
            Move (Child.all, Current, Window.Insets.Top);

            Current := Current + Width (Child.all) + Window.Padding;
         else
            Move (Child.all, Window.Insets.Left, Current);

            Current := Current + Height (Child.all) + Window.Padding;
         end if;
      exception
         when others =>
            null; -- out of bounds windows ignored
      end Pack_Children;

   begin
      if not (Iconic (Window)) then
         Enumerate_Children (Window, Count_Children'unrestricted_access);

         if Window.Fill_Width or Window.Fill_Height then

            if
              Window.Direction = Horizontal or
              Window.Direction = Horizontal_From_Center or
              Window.Direction = Horizontal_From_Right
            then
               if Window.Fill_Height then
                  Control_Height := Client_Area_Height (Window) -
                    Window.Insets.Top -
                    Window.Insets.Bottom;
               end if;

               if Window.Fill_Width then
                  Control_Width := (Client_Area_Width (Window) -
                                    (Window.Padding * (Child_Count - 1)) -
                                    Window.Insets.Left -
                                    Window.Insets.Right) / Child_Count;
               end if;
            else
               if  Window.Fill_Width then
                  Control_Width := Client_Area_Width (Window) -
                    Window.Insets.Left -
                    Window.Insets.Right;
               end if;

               if Window.Fill_Height then
                  Control_Height := (Client_Area_Height (Window) -
                                     (Window.Padding * (Child_Count - 1)) -
                                     Window.Insets.Top -
                                     Window.Insets.Bottom) / Child_Count;
               end if;
            end if;

            Enumerate_Children (Window, Size_Children'unrestricted_access);
         end if;

         case Window.Direction is
            when Horizontal =>
               Current := Window.Insets.Left;
            when Vertical =>
               Current := Window.Insets.Top;
            when Horizontal_From_Center =>
               Current := (Client_Area_Width (Window) -
                 Window.Insets.Left -
                 Window.Insets.Right -
                 Total_Width) / 2 + Window.Insets.Left;
            when Vertical_From_Center =>
               Current := (Client_Area_Height (Window) -
                 Window.Insets.Top -
                 Window.Insets.Bottom -
                 Total_Height) / 2 + Window.Insets.Top;
            when Horizontal_From_Right =>
               Current := Client_Area_Width (Window) -
                 Window.Insets.Left -
                 Window.Insets.Right -
                 Total_Width;
            when Vertical_From_Bottom =>
               Current := Client_Area_Height (Window) -
                 Window.Insets.Top -
                 Window.Insets.Bottom -
                 Total_Height;
         end case;

         Enumerate_Children (Window, Pack_Children'unrestricted_access);
      end if;
   exception
      when others =>
         null; -- Window too small
   end Pack;

   -----------------------
   -- Packing_Direction --
   -----------------------

   procedure Packing_Direction
     (Window    : in out Packing_Box_Type;
      Direction : in     Packing_Direction_Type)
   is
   begin
      Window.Direction := Direction;
   end Packing_Direction;

   -----------------------
   -- Packing_Direction --
   -----------------------

   function Packing_Direction
     (Window : in Packing_Box_Type)
      return Packing_Direction_Type
   is
   begin
      return Window.Direction;
   end Packing_Direction;

   -------------
   -- Padding --
   -------------

   procedure Padding
     (Window : in out Packing_Box_Type;
      Amount : in     Natural)
   is
   begin
      Window.Padding := Amount;
   end Padding;

   -------------
   -- Padding --
   -------------

   function Padding (Window : in Packing_Box_Type) return Natural is
   begin
      return Window.Padding;
   end Padding;

   ------------
   -- Create --
   ------------

   procedure Create
     (Window     : in out Packing_Box_Type;
      Parent     : in out GWindows.Base.Base_Window_Type'class;
      Left       : in     Integer;
      Top        : in     Integer;
      Width      : in     Integer;
      Height     : in     Integer;
      Direction  : in     Packing_Direction_Type;
      All_Keys   : in     Boolean                              := False;
      Container  : in     Boolean                              := True;
      ID         : in     Integer                              := 0;
      Show       : in     Boolean                              := True;
      Is_Dynamic : in     Boolean                              := False)
   is
   begin
      Create_As_Control (Window, Parent, "",
                         Left, Top, Width, Height,
                         All_Keys, Container, ID, 0, Show, Is_Dynamic);
      Window.Direction := Direction;
   end Create;

end GWindows.Packing_Boxes;
