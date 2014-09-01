------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--                    G W I N D O W S . A C T I V E X                       --
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

with GWindows.Types;
with GWindows.GStrings;

with GNATCOM.GUID;
with GNATCOM.Errors;

package body GWindows.ActiveX is
   pragma Linker_Options ("-lgwocx1");

   -------------------------------------------------------------------------
   --  Package Body
   -------------------------------------------------------------------------

   ------------
   -- Create --
   ------------

   procedure Create (Control : in out ActiveX_Type;
                     Parent  : in out GWindows.Base.Base_Window_Type'Class;
                     CLSID   : in     GNATCOM.Types.GUID;
                     Left    : in     Integer;
                     Top     : in     Integer;
                     Width   : in     Integer;
                     Height  : in     Integer;
                     Key     : in     GNATCOM.Types.BSTR := null)
   is
      WS_VISIBLE          : constant := 16#10000000#;

      function Create_Control
        (ParentHWND :        Interfaces.C.long;
         pClassID   : access GNATCOM.Types.GUID;
         ppUnk      : access GNATCOM.Types.Pointer_To_IUnknown;
         pHWND      : access GWindows.Types.Handle;
         Style      :        Interfaces.C.unsigned;
         left       :        Integer;
         top        :        Integer;
         width      :        Integer;
         height     :        Integer;
         Id         :        Integer := 0;
         Lic        :        GNATCOM.Types.BSTR := Key)
        return GNATCOM.Types.HRESULT;
      pragma Import (C, Create_Control, "CreateControl");

      Class_ID : aliased GNATCOM.Types.GUID := CLSID;
      HWND     : aliased GWindows.Types.Handle;
      pUnk     : aliased GNATCOM.Types.Pointer_To_IUnknown;
      IUnknown : GNATCOM.Interface.Interface_Type;
   begin
      GNATCOM.Errors.Error_Check
        (Create_Control (GWindows.Base.Handle (Parent),
                         Class_ID'Access,
                         pUnk'Access,
                         HWND'Access,
                         WS_VISIBLE,
                         Left, Top, Width, Height));

      Attach_Control
        (Control,
         HWND);

      GNATCOM.Interface.Attach (IUnknown, pUnk);
      Control.Cookie := GNATCOM.Interface.Put_In_GIT (IUnknown);
   end Create;

   procedure Create (Control : in out ActiveX_Type;
                     Parent  : in out GWindows.Base.Base_Window_Type'Class;
                     ProgID  : in     GString;
                     Left    : in     Integer;
                     Top     : in     Integer;
                     Width   : in     Integer;
                     Height  : in     Integer;
                     Key     : in     GNATCOM.Types.BSTR := null)
   is
      Class_ID : GNATCOM.Types.GUID :=
        GNATCOM.GUID.To_GUID (GWindows.GStrings.To_String (ProgID));
   begin
      Create (Control, Parent, Class_ID, Left, Top, Width, Height, Key);
   end Create;

   ---------------
   -- Interface --
   ---------------

   function Interface (Control : in ActiveX_Type)
                      return GNATCOM.Interface.Interface_Type
   is
      IUnknown : GNATCOM.Interface.Interface_Type;
   begin
      GNATCOM.Interface.Attach_From_GIT (IUnknown, Control.Cookie);
      return IUnknown;
   end Interface;

   ----------------
   -- On_Destroy --
   ----------------

   procedure On_Destroy (Window : in out ActiveX_Type)
   is
   begin
      GNATCOM.Interface.Remove_From_GIT (Window.Cookie);

      GWindows.Base.On_Destroy (GWindows.Base.Base_Window_Type (Window));
   end On_Destroy;

end GWindows.ActiveX;
