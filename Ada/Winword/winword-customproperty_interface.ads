with GNATCOM.Dispinterface;

package winword.CustomProperty_Interface is

   type CustomProperty_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CustomProperty_Type);

   function Pointer (This : CustomProperty_Type)
     return Pointer_To_CustomProperty;

   procedure Attach (This    : in out CustomProperty_Type;
                     Pointer : in     Pointer_To_CustomProperty);

   function Get_Name
     (This : CustomProperty_Type)
     return GNATCOM.Types.BSTR;

   function Get_Value
     (This : CustomProperty_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Value
     (This : CustomProperty_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Application
     (This : CustomProperty_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CustomProperty_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CustomProperty_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Delete
     (This : CustomProperty_Type);

end winword.CustomProperty_Interface;

