package body winword.Language_Object is

   function Get_Application
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_Parent);
   end Get_Parent;

   function Get_ID
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_ID);
   end Get_ID;

   function Get_NameLocal
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_NameLocal);
   end Get_NameLocal;

   function Get_Name
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_Name);
   end Get_Name;

   function Get_ActiveGrammarDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_ActiveGrammarDictionary);
   end Get_ActiveGrammarDictionary;

   function Get_ActiveHyphenationDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_ActiveHyphenationDictionary);
   end Get_ActiveHyphenationDictionary;

   function Get_ActiveSpellingDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_ActiveSpellingDictionary);
   end Get_ActiveSpellingDictionary;

   function Get_ActiveThesaurusDictionary
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_ActiveThesaurusDictionary);
   end Get_ActiveThesaurusDictionary;

   function Get_DefaultWritingStyle
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_DefaultWritingStyle);
   end Get_DefaultWritingStyle;

   procedure Put_DefaultWritingStyle
     (This : Language_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Language_Put_DefaultWritingStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultWritingStyle;

   function Get_WritingStyleList
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_WritingStyleList);
   end Get_WritingStyleList;

   function Get_SpellingDictionaryType
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Language_Get_SpellingDictionaryType);
   end Get_SpellingDictionaryType;

   procedure Put_SpellingDictionaryType
     (This : Language_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Language_Put_SpellingDictionaryType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpellingDictionaryType;

end winword.Language_Object;

