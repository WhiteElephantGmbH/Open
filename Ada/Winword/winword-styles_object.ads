with GNATCOM.Dispinterface;

package winword.Styles_Object is

   type Styles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Styles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : Styles_Type;
      Name  : GNATCOM.Types.VARIANT;
      uType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Styles_Object;

