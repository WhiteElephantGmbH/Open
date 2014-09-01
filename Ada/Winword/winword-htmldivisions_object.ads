with GNATCOM.Dispinterface;

package winword.HTMLDivisions_Object is

   type HTMLDivisions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NestingLevel
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : HTMLDivisions_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : HTMLDivisions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.HTMLDivisions_Object;

