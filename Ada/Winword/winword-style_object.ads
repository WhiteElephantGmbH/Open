with GNATCOM.Dispinterface;

package winword.Style_Object is

   type Style_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NameLocal
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NameLocal
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BaseStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BaseStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Description
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuiltIn
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NextParagraphStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NextParagraphStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InUse
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shading
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ParagraphFormat
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ParagraphFormat
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Font
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Frame
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageID
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutomaticallyUpdate
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutomaticallyUpdate
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ListTemplate
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListLevelNumber
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageIDFarEast
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDFarEast
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Hidden
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Hidden
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : Style_Type);

   procedure LinkToListTemplate
     (This            : Style_Type;
      ListTemplate    : GNATCOM.Types.VARIANT;
      ListLevelNumber : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True);

   function Get_NoProofing
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoProofing
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LinkStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LinkStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Visibility
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visibility
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Table
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

end winword.Style_Object;

