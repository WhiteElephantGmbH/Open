with GNATCOM.Dispinterface;

package winword.Template_Object is

   type Template_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Name
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoTextEntries
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageID
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Saved
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Saved
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FullName
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuiltInDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CustomDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListTemplates
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageIDFarEast
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDFarEast
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VBProject
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KerningByAlgorithm
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KerningByAlgorithm
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_JustificationMode
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_JustificationMode
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FarEastLineBreakLevel
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakLevel
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineBreakBefore
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineBreakBefore
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineBreakAfter
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineBreakAfter
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function OpenAsDocument
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Save
     (This : Template_Type);

   function Get_NoProofing
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoProofing
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FarEastLineBreakLanguage
     (This : Template_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakLanguage
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Template_Object;

