with GNATCOM.Dispinterface;

package winword.FormFields_Interface is

   type FormFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FormFields_Type);

   function Pointer (This : FormFields_Type)
     return Pointer_To_FormFields;

   procedure Attach (This    : in out FormFields_Type;
                     Pointer : in     Pointer_To_FormFields);

   function Get_Application
     (This : FormFields_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FormFields_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FormFields_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : FormFields_Type)
     return Interfaces.C.long;

   function Get_Shaded
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Shaded
     (This : FormFields_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Getu_NewEnum
     (This : FormFields_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : FormFields_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_FormField;

   function Add
     (This   : FormFields_Type;
      uRange : Pointer_To_uRange;
      uType  : WdFieldType)
     return Pointer_To_FormField;

end winword.FormFields_Interface;

