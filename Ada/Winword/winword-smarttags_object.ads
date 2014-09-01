with GNATCOM.Dispinterface;

package winword.SmartTags_Object is

   type SmartTags_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : SmartTags_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This       : SmartTags_Type;
      Name       : GNATCOM.Types.VARIANT;
      uRange     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Properties : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.SmartTags_Object;

