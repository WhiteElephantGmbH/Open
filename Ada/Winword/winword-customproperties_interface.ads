with GNATCOM.Dispinterface;

package winword.CustomProperties_Interface is

   type CustomProperties_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CustomProperties_Type);

   function Pointer (This : CustomProperties_Type)
     return Pointer_To_CustomProperties;

   procedure Attach (This    : in out CustomProperties_Type;
                     Pointer : in     Pointer_To_CustomProperties);

   function Getu_NewEnum
     (This : CustomProperties_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : CustomProperties_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : CustomProperties_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CustomProperties_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CustomProperties_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : CustomProperties_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_CustomProperty;

   function Add
     (This  : CustomProperties_Type;
      Name  : GNATCOM.Types.BSTR;
      Value : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
     return Pointer_To_CustomProperty;

end winword.CustomProperties_Interface;

