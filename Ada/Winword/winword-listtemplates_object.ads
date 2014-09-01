with GNATCOM.Dispinterface;

package winword.ListTemplates_Object is

   type ListTemplates_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ListTemplates_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This            : ListTemplates_Type;
      OutlineNumbered : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Name            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ListTemplates_Object;

