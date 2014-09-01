with GNATCOM.Dispinterface;

package winword.Replacement_Interface is

   type Replacement_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Replacement_Type);

   function Pointer (This : Replacement_Type)
     return Pointer_To_Replacement;

   procedure Attach (This    : in out Replacement_Type;
                     Pointer : in     Pointer_To_Replacement);

   function Get_Application
     (This : Replacement_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Replacement_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Replacement_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Font
     (This : Replacement_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : Replacement_Type;
      prop : Pointer_To_uFont);

   function Get_ParagraphFormat
     (This : Replacement_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Replacement_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_Style
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Replacement_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Text
     (This : Replacement_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This : Replacement_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_LanguageID
     (This : Replacement_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : Replacement_Type;
      prop : WdLanguageID);

   function Get_Highlight
     (This : Replacement_Type)
     return Interfaces.C.long;

   procedure Put_Highlight
     (This : Replacement_Type;
      prop : Interfaces.C.long);

   function Get_Frame
     (This : Replacement_Type)
     return Pointer_To_Frame;

   function Get_LanguageIDFarEast
     (This : Replacement_Type)
     return WdLanguageID;

   procedure Put_LanguageIDFarEast
     (This : Replacement_Type;
      prop : WdLanguageID);

   procedure ClearFormatting
     (This : Replacement_Type);

   function Get_NoProofing
     (This : Replacement_Type)
     return Interfaces.C.long;

   procedure Put_NoProofing
     (This : Replacement_Type;
      prop : Interfaces.C.long);

end winword.Replacement_Interface;

