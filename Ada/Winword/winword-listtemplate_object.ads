with GNATCOM.Dispinterface;

package winword.ListTemplate_Object is

   type ListTemplate_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OutlineNumbered
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutlineNumbered
     (This : ListTemplate_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : ListTemplate_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ListLevels
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT;

   function Convert
     (This  : ListTemplate_Type;
      Level : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ListTemplate_Object;

