with GNATCOM.Dispinterface;

package winword.Template_Interface is

   type Template_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Template_Type);

   function Pointer (This : Template_Type)
     return Pointer_To_Template;

   procedure Attach (This    : in out Template_Type;
                     Pointer : in     Pointer_To_Template);

   function Get_Name
     (This : Template_Type)
     return GNATCOM.Types.BSTR;

   function Get_Application
     (This : Template_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Template_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Template_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Path
     (This : Template_Type)
     return GNATCOM.Types.BSTR;

   function Get_AutoTextEntries
     (This : Template_Type)
     return Pointer_To_AutoTextEntries;

   function Get_LanguageID
     (This : Template_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : Template_Type;
      prop : WdLanguageID);

   function Get_Saved
     (This : Template_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Saved
     (This : Template_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Type
     (This : Template_Type)
     return WdTemplateType;

   function Get_FullName
     (This : Template_Type)
     return GNATCOM.Types.BSTR;

   function Get_BuiltInDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CustomDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ListTemplates
     (This : Template_Type)
     return Pointer_To_ListTemplates;

   function Get_LanguageIDFarEast
     (This : Template_Type)
     return WdLanguageID;

   procedure Put_LanguageIDFarEast
     (This : Template_Type;
      prop : WdLanguageID);

   function Get_VBProject
     (This : Template_Type)
     return Pointer_To_uVBProject;

   function Get_KerningByAlgorithm
     (This : Template_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_KerningByAlgorithm
     (This : Template_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_JustificationMode
     (This : Template_Type)
     return WdJustificationMode;

   procedure Put_JustificationMode
     (This : Template_Type;
      prop : WdJustificationMode);

   function Get_FarEastLineBreakLevel
     (This : Template_Type)
     return WdFarEastLineBreakLevel;

   procedure Put_FarEastLineBreakLevel
     (This : Template_Type;
      prop : WdFarEastLineBreakLevel);

   function Get_NoLineBreakBefore
     (This : Template_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NoLineBreakBefore
     (This : Template_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_NoLineBreakAfter
     (This : Template_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NoLineBreakAfter
     (This : Template_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function OpenAsDocument
     (This : Template_Type)
     return Pointer_To_uDocument;

   procedure Save
     (This : Template_Type);

   function Get_NoProofing
     (This : Template_Type)
     return Interfaces.C.long;

   procedure Put_NoProofing
     (This : Template_Type;
      prop : Interfaces.C.long);

   function Get_FarEastLineBreakLanguage
     (This : Template_Type)
     return WdFarEastLineBreakLanguageID;

   procedure Put_FarEastLineBreakLanguage
     (This : Template_Type;
      prop : WdFarEastLineBreakLanguageID);

end winword.Template_Interface;

