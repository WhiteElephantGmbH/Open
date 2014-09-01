with GNATCOM.Dispinterface;

package winword.LanguageSettings_Object is

   type LanguageSettings_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : LanguageSettings_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : LanguageSettings_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageID
     (This : LanguageSettings_Type;
      Id   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_LanguagePreferredForEditing
     (This : LanguageSettings_Type;
      lid  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : LanguageSettings_Type)
     return GNATCOM.Types.VARIANT;

end winword.LanguageSettings_Object;

