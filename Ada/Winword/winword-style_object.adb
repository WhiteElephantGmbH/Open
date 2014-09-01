package body winword.Style_Object is

   function Get_Application
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Parent);
   end Get_Parent;

   function Get_NameLocal
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_NameLocal);
   end Get_NameLocal;

   procedure Put_NameLocal
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_NameLocal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NameLocal;

   function Get_BaseStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_BaseStyle);
   end Get_BaseStyle;

   procedure Put_BaseStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_BaseStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BaseStyle;

   function Get_Description
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Description);
   end Get_Description;

   function Get_Type
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Type);
   end Get_Type;

   function Get_BuiltIn
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_BuiltIn);
   end Get_BuiltIn;

   function Get_NextParagraphStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_NextParagraphStyle);
   end Get_NextParagraphStyle;

   procedure Put_NextParagraphStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_NextParagraphStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NextParagraphStyle;

   function Get_InUse
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_InUse);
   end Get_InUse;

   function Get_Shading
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Shading);
   end Get_Shading;

   function Get_Borders
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_ParagraphFormat
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_ParagraphFormat);
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_ParagraphFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ParagraphFormat;

   function Get_Font
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

   function Get_Frame
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Frame);
   end Get_Frame;

   function Get_LanguageID
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_AutomaticallyUpdate
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_AutomaticallyUpdate);
   end Get_AutomaticallyUpdate;

   procedure Put_AutomaticallyUpdate
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_AutomaticallyUpdate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutomaticallyUpdate;

   function Get_ListTemplate
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_ListTemplate);
   end Get_ListTemplate;

   function Get_ListLevelNumber
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_ListLevelNumber);
   end Get_ListLevelNumber;

   function Get_LanguageIDFarEast
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_LanguageIDFarEast);
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_LanguageIDFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDFarEast;

   function Get_Hidden
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Hidden);
   end Get_Hidden;

   procedure Put_Hidden
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_Hidden,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Hidden;

   procedure Delete
     (This : Style_Type)
   is
   begin
      Invoke (This, Style_Delete);
   end Delete;

   procedure LinkToListTemplate
     (This            : Style_Type;
      ListTemplate    : GNATCOM.Types.VARIANT;
      ListLevelNumber : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True)
   is
   begin
      Invoke
        (This,
         Style_LinkToListTemplate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ListLevelNumber,
          2 => ListTemplate),
         Free);
   end LinkToListTemplate;

   function Get_NoProofing
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_NoProofing);
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_NoProofing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoProofing;

   function Get_LinkStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_LinkStyle);
   end Get_LinkStyle;

   procedure Put_LinkStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_LinkStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LinkStyle;

   function Get_Visibility
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Visibility);
   end Get_Visibility;

   procedure Put_Visibility
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_Visibility,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visibility;

   function Get_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_NoSpaceBetweenParagraphsOfSameStyle);
   end Get_NoSpaceBetweenParagraphsOfSameStyle;

   procedure Put_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Style_Put_NoSpaceBetweenParagraphsOfSameStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoSpaceBetweenParagraphsOfSameStyle;

   function Get_Table
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Style_Get_Table);
   end Get_Table;

end winword.Style_Object;

