with GNATCOM.Dispinterface;

package winword.Language_Object is

   type Language_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ID
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NameLocal
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveGrammarDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveHyphenationDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveSpellingDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveThesaurusDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultWritingStyle
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultWritingStyle
     (This : Language_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WritingStyleList
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SpellingDictionaryType
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpellingDictionaryType
     (This : Language_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Language_Object;

