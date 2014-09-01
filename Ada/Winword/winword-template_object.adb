package body winword.Template_Object is

   function Get_Name
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Name);
   end Get_Name;

   function Get_Application
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Parent);
   end Get_Parent;

   function Get_Path
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Path);
   end Get_Path;

   function Get_AutoTextEntries
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_AutoTextEntries);
   end Get_AutoTextEntries;

   function Get_LanguageID
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_Saved
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Saved);
   end Get_Saved;

   procedure Put_Saved
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_Saved,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Saved;

   function Get_Type
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_Type);
   end Get_Type;

   function Get_FullName
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_FullName);
   end Get_FullName;

   function Get_BuiltInDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_BuiltInDocumentProperties);
   end Get_BuiltInDocumentProperties;

   function Get_CustomDocumentProperties
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_CustomDocumentProperties);
   end Get_CustomDocumentProperties;

   function Get_ListTemplates
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_ListTemplates);
   end Get_ListTemplates;

   function Get_LanguageIDFarEast
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_LanguageIDFarEast);
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_LanguageIDFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDFarEast;

   function Get_VBProject
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_VBProject);
   end Get_VBProject;

   function Get_KerningByAlgorithm
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_KerningByAlgorithm);
   end Get_KerningByAlgorithm;

   procedure Put_KerningByAlgorithm
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_KerningByAlgorithm,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KerningByAlgorithm;

   function Get_JustificationMode
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_JustificationMode);
   end Get_JustificationMode;

   procedure Put_JustificationMode
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_JustificationMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_JustificationMode;

   function Get_FarEastLineBreakLevel
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_FarEastLineBreakLevel);
   end Get_FarEastLineBreakLevel;

   procedure Put_FarEastLineBreakLevel
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_FarEastLineBreakLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakLevel;

   function Get_NoLineBreakBefore
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_NoLineBreakBefore);
   end Get_NoLineBreakBefore;

   procedure Put_NoLineBreakBefore
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_NoLineBreakBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineBreakBefore;

   function Get_NoLineBreakAfter
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_NoLineBreakAfter);
   end Get_NoLineBreakAfter;

   procedure Put_NoLineBreakAfter
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_NoLineBreakAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineBreakAfter;

   function OpenAsDocument
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Template_OpenAsDocument);
   end OpenAsDocument;

   procedure Save
     (This : Template_Type)
   is
   begin
      Invoke (This, Template_Save);
   end Save;

   function Get_NoProofing
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_NoProofing);
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_NoProofing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoProofing;

   function Get_FarEastLineBreakLanguage
     (This : Template_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Template_Get_FarEastLineBreakLanguage);
   end Get_FarEastLineBreakLanguage;

   procedure Put_FarEastLineBreakLanguage
     (This : Template_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Template_Put_FarEastLineBreakLanguage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakLanguage;

end winword.Template_Object;

