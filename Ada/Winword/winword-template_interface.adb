with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Template_Interface is

   procedure Initialize (This : in out Template_Type) is
   begin
      Set_IID (This, IID_Template);
   end Initialize;

   function Pointer (This : Template_Type)
     return Pointer_To_Template
   is
   begin
      return To_Pointer_To_Template (Address (This));
   end Pointer;

   procedure Attach (This    : in out Template_Type;
                     Pointer : in     Pointer_To_Template)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Name
     (This : Template_Type)
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

   function Get_Application
     (This : Template_Type)
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
     (This : Template_Type)
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
     (This : Template_Type)
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

   function Get_Path
     (This : Template_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Path;

   function Get_AutoTextEntries
     (This : Template_Type)
     return Pointer_To_AutoTextEntries
   is
       RetVal : aliased Pointer_To_AutoTextEntries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoTextEntries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoTextEntries;

   function Get_LanguageID
     (This : Template_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Template_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_Saved
     (This : Template_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Saved
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Saved;

   procedure Put_Saved
     (This : Template_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Saved
         (Pointer (This),
          prop));

   end Put_Saved;

   function Get_Type
     (This : Template_Type)
     return WdTemplateType
   is
       RetVal : aliased WdTemplateType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_FullName
     (This : Template_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FullName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FullName;

   function Get_BuiltInDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltInDocumentProperties
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuiltInDocumentProperties;

   function Get_CustomDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomDocumentProperties
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CustomDocumentProperties;

   function Get_ListTemplates
     (This : Template_Type)
     return Pointer_To_ListTemplates
   is
       RetVal : aliased Pointer_To_ListTemplates;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListTemplates
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListTemplates;

   function Get_LanguageIDFarEast
     (This : Template_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageIDFarEast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Template_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDFarEast
         (Pointer (This),
          prop));

   end Put_LanguageIDFarEast;

   function Get_VBProject
     (This : Template_Type)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBProject
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBProject;

   function Get_KerningByAlgorithm
     (This : Template_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KerningByAlgorithm
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KerningByAlgorithm;

   procedure Put_KerningByAlgorithm
     (This : Template_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KerningByAlgorithm
         (Pointer (This),
          prop));

   end Put_KerningByAlgorithm;

   function Get_JustificationMode
     (This : Template_Type)
     return WdJustificationMode
   is
       RetVal : aliased WdJustificationMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_JustificationMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_JustificationMode;

   procedure Put_JustificationMode
     (This : Template_Type;
      prop : WdJustificationMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_JustificationMode
         (Pointer (This),
          prop));

   end Put_JustificationMode;

   function Get_FarEastLineBreakLevel
     (This : Template_Type)
     return WdFarEastLineBreakLevel
   is
       RetVal : aliased WdFarEastLineBreakLevel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FarEastLineBreakLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FarEastLineBreakLevel;

   procedure Put_FarEastLineBreakLevel
     (This : Template_Type;
      prop : WdFarEastLineBreakLevel)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FarEastLineBreakLevel
         (Pointer (This),
          prop));

   end Put_FarEastLineBreakLevel;

   function Get_NoLineBreakBefore
     (This : Template_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoLineBreakBefore
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoLineBreakBefore;

   procedure Put_NoLineBreakBefore
     (This : Template_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoLineBreakBefore
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NoLineBreakBefore;

   function Get_NoLineBreakAfter
     (This : Template_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoLineBreakAfter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoLineBreakAfter;

   procedure Put_NoLineBreakAfter
     (This : Template_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoLineBreakAfter
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NoLineBreakAfter;

   function OpenAsDocument
     (This : Template_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenAsDocument
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end OpenAsDocument;

   procedure Save
     (This : Template_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Save
         (Pointer (This)));

   end Save;

   function Get_NoProofing
     (This : Template_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoProofing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Template_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoProofing
         (Pointer (This),
          prop));

   end Put_NoProofing;

   function Get_FarEastLineBreakLanguage
     (This : Template_Type)
     return WdFarEastLineBreakLanguageID
   is
       RetVal : aliased WdFarEastLineBreakLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FarEastLineBreakLanguage
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FarEastLineBreakLanguage;

   procedure Put_FarEastLineBreakLanguage
     (This : Template_Type;
      prop : WdFarEastLineBreakLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FarEastLineBreakLanguage
         (Pointer (This),
          prop));

   end Put_FarEastLineBreakLanguage;

end winword.Template_Interface;

