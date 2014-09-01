with GNATCOM.Dispinterface;

package winword.Style_Interface is

   type Style_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Style_Type);

   function Pointer (This : Style_Type)
     return Pointer_To_Style;

   procedure Attach (This    : in out Style_Type;
                     Pointer : in     Pointer_To_Style);

   function Get_Application
     (This : Style_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Style_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Style_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_NameLocal
     (This : Style_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NameLocal
     (This : Style_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_BaseStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BaseStyle
     (This : Style_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Description
     (This : Style_Type)
     return GNATCOM.Types.BSTR;

   function Get_Type
     (This : Style_Type)
     return WdStyleType;

   function Get_BuiltIn
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_NextParagraphStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NextParagraphStyle
     (This : Style_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_InUse
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Shading
     (This : Style_Type)
     return Pointer_To_Shading;

   function Get_Borders
     (This : Style_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Style_Type;
      prop : Pointer_To_Borders);

   function Get_ParagraphFormat
     (This : Style_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Style_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_Font
     (This : Style_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : Style_Type;
      prop : Pointer_To_uFont);

   function Get_Frame
     (This : Style_Type)
     return Pointer_To_Frame;

   function Get_LanguageID
     (This : Style_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : Style_Type;
      prop : WdLanguageID);

   function Get_AutomaticallyUpdate
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutomaticallyUpdate
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ListTemplate
     (This : Style_Type)
     return Pointer_To_ListTemplate;

   function Get_ListLevelNumber
     (This : Style_Type)
     return Interfaces.C.long;

   function Get_LanguageIDFarEast
     (This : Style_Type)
     return WdLanguageID;

   procedure Put_LanguageIDFarEast
     (This : Style_Type;
      prop : WdLanguageID);

   function Get_Hidden
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Hidden
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure Delete
     (This : Style_Type);

   procedure LinkToListTemplate
     (This            : Style_Type;
      ListTemplate    : Pointer_To_ListTemplate;
      ListLevelNumber : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_NoProofing
     (This : Style_Type)
     return Interfaces.C.long;

   procedure Put_NoProofing
     (This : Style_Type;
      prop : Interfaces.C.long);

   function Get_LinkStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LinkStyle
     (This : Style_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Visibility
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visibility
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Table
     (This : Style_Type)
     return Pointer_To_TableStyle;

end winword.Style_Interface;

