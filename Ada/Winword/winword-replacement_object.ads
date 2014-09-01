with GNATCOM.Dispinterface;

package winword.Replacement_Object is

   type Replacement_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Font
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ParagraphFormat
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ParagraphFormat
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Style
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Text
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageID
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Highlight
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Highlight
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Frame
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageIDFarEast
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDFarEast
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure ClearFormatting
     (This : Replacement_Type);

   function Get_NoProofing
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoProofing
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Replacement_Object;

