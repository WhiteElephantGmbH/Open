with GNATCOM.Dispinterface;

package winword.Language_Interface is

   type Language_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Language_Type);

   function Pointer (This : Language_Type)
     return Pointer_To_Language;

   procedure Attach (This    : in out Language_Type;
                     Pointer : in     Pointer_To_Language);

   function Get_Application
     (This : Language_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Language_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Language_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ID
     (This : Language_Type)
     return WdLanguageID;

   function Get_NameLocal
     (This : Language_Type)
     return GNATCOM.Types.BSTR;

   function Get_Name
     (This : Language_Type)
     return GNATCOM.Types.BSTR;

   function Get_ActiveGrammarDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary;

   function Get_ActiveHyphenationDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary;

   function Get_ActiveSpellingDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary;

   function Get_ActiveThesaurusDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary;

   function Get_DefaultWritingStyle
     (This : Language_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DefaultWritingStyle
     (This : Language_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_WritingStyleList
     (This : Language_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SpellingDictionaryType
     (This : Language_Type)
     return WdDictionaryType;

   procedure Put_SpellingDictionaryType
     (This : Language_Type;
      prop : WdDictionaryType);

end winword.Language_Interface;

