with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Language_Interface is

   procedure Initialize (This : in out Language_Type) is
   begin
      Set_IID (This, IID_Language);
   end Initialize;

   function Pointer (This : Language_Type)
     return Pointer_To_Language
   is
   begin
      return To_Pointer_To_Language (Address (This));
   end Pointer;

   procedure Attach (This    : in out Language_Type;
                     Pointer : in     Pointer_To_Language)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Language_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Language_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Language_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_ID
     (This : Language_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ID;

   function Get_NameLocal
     (This : Language_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameLocal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameLocal;

   function Get_Name
     (This : Language_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_ActiveGrammarDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveGrammarDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveGrammarDictionary;

   function Get_ActiveHyphenationDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveHyphenationDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveHyphenationDictionary;

   function Get_ActiveSpellingDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveSpellingDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveSpellingDictionary;

   function Get_ActiveThesaurusDictionary
     (This : Language_Type)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveThesaurusDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveThesaurusDictionary;

   function Get_DefaultWritingStyle
     (This : Language_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultWritingStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultWritingStyle;

   procedure Put_DefaultWritingStyle
     (This : Language_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultWritingStyle
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DefaultWritingStyle;

   function Get_WritingStyleList
     (This : Language_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WritingStyleList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WritingStyleList;

   function Get_SpellingDictionaryType
     (This : Language_Type)
     return WdDictionaryType
   is
       RetVal : aliased WdDictionaryType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpellingDictionaryType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpellingDictionaryType;

   procedure Put_SpellingDictionaryType
     (This : Language_Type;
      prop : WdDictionaryType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpellingDictionaryType
         (Pointer (This),
          prop));

   end Put_SpellingDictionaryType;

end winword.Language_Interface;

