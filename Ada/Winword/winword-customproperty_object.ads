with GNATCOM.Dispinterface;

package winword.CustomProperty_Object is

   type CustomProperty_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Name
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : CustomProperty_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Application
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : CustomProperty_Type);

end winword.CustomProperty_Object;

