package body winword.Replacement_Object is

   function Get_Application
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Parent);
   end Get_Parent;

   function Get_Font
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

   function Get_ParagraphFormat
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_ParagraphFormat);
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_ParagraphFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ParagraphFormat;

   function Get_Style
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Text
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Text);
   end Get_Text;

   procedure Put_Text
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_LanguageID
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_Highlight
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Highlight);
   end Get_Highlight;

   procedure Put_Highlight
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_Highlight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Highlight;

   function Get_Frame
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_Frame);
   end Get_Frame;

   function Get_LanguageIDFarEast
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_LanguageIDFarEast);
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_LanguageIDFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDFarEast;

   procedure ClearFormatting
     (This : Replacement_Type)
   is
   begin
      Invoke (This, Replacement_ClearFormatting);
   end ClearFormatting;

   function Get_NoProofing
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Replacement_Get_NoProofing);
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Replacement_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Replacement_Put_NoProofing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoProofing;

end winword.Replacement_Object;

