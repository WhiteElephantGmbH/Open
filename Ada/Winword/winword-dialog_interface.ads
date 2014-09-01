with GNATCOM.Dispinterface;

package winword.Dialog_Interface is

   type Dialog_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Dialog_Type);

   function Pointer (This : Dialog_Type)
     return Pointer_To_Dialog;

   procedure Attach (This    : in out Dialog_Type;
                     Pointer : in     Pointer_To_Dialog);

   function Get_Application
     (This : Dialog_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Dialog_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Dialog_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_DefaultTab
     (This : Dialog_Type)
     return WdWordDialogTab;

   procedure Put_DefaultTab
     (This : Dialog_Type;
      prop : WdWordDialogTab);

   function Get_Type
     (This : Dialog_Type)
     return WdWordDialog;

   function Show
     (This    : Dialog_Type;
      TimeOut : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function Display
     (This    : Dialog_Type;
      TimeOut : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure Execute
     (This : Dialog_Type);

   procedure Update
     (This : Dialog_Type);

   function Get_CommandName
     (This : Dialog_Type)
     return GNATCOM.Types.BSTR;

end winword.Dialog_Interface;

