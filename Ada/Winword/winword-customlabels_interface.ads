with GNATCOM.Dispinterface;

package winword.CustomLabels_Interface is

   type CustomLabels_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CustomLabels_Type);

   function Pointer (This : CustomLabels_Type)
     return Pointer_To_CustomLabels;

   procedure Attach (This    : in out CustomLabels_Type;
                     Pointer : in     Pointer_To_CustomLabels);

   function Get_Application
     (This : CustomLabels_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CustomLabels_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CustomLabels_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : CustomLabels_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : CustomLabels_Type)
     return Interfaces.C.long;

   function Item
     (This  : CustomLabels_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_CustomLabel;

   function Add
     (This      : CustomLabels_Type;
      Name      : GNATCOM.Types.BSTR;
      DotMatrix : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CustomLabel;

end winword.CustomLabels_Interface;

