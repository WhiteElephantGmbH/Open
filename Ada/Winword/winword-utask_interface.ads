with GNATCOM.Dispinterface;

package winword.uTask_Interface is

   type uTask_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uTask_Type);

   function Pointer (This : uTask_Type)
     return Pointer_To_uTask;

   procedure Attach (This    : in out uTask_Type;
                     Pointer : in     Pointer_To_uTask);

   function Get_Application
     (This : uTask_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uTask_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uTask_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : uTask_Type)
     return GNATCOM.Types.BSTR;

   function Get_Left
     (This : uTask_Type)
     return Interfaces.C.long;

   procedure Put_Left
     (This : uTask_Type;
      prop : Interfaces.C.long);

   function Get_Top
     (This : uTask_Type)
     return Interfaces.C.long;

   procedure Put_Top
     (This : uTask_Type;
      prop : Interfaces.C.long);

   function Get_Width
     (This : uTask_Type)
     return Interfaces.C.long;

   procedure Put_Width
     (This : uTask_Type;
      prop : Interfaces.C.long);

   function Get_Height
     (This : uTask_Type)
     return Interfaces.C.long;

   procedure Put_Height
     (This : uTask_Type;
      prop : Interfaces.C.long);

   function Get_WindowState
     (This : uTask_Type)
     return WdWindowState;

   procedure Put_WindowState
     (This : uTask_Type;
      prop : WdWindowState);

   function Get_Visible
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This : uTask_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure Activate
     (This : uTask_Type;
      Wait : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Close
     (This : uTask_Type);

   procedure Move
     (This : uTask_Type;
      Left : Interfaces.C.long;
      Top  : Interfaces.C.long);

   procedure Resize
     (This   : uTask_Type;
      Width  : Interfaces.C.long;
      Height : Interfaces.C.long);

   procedure SendWindowMessage
     (This    : uTask_Type;
      Message : Interfaces.C.long;
      wParam  : Interfaces.C.long;
      lParam  : Interfaces.C.long);

end winword.uTask_Interface;

