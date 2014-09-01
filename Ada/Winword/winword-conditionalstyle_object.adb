package body winword.ConditionalStyle_Object is

   function Get_Application
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_Parent);
   end Get_Parent;

   function Get_Shading
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_Shading);
   end Get_Shading;

   function Get_Borders
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_BottomPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_BottomPadding);
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_BottomPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BottomPadding;

   function Get_TopPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_TopPadding);
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_TopPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopPadding;

   function Get_LeftPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_LeftPadding);
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_LeftPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftPadding;

   function Get_RightPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_RightPadding);
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_RightPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightPadding;

   function Get_ParagraphFormat
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_ParagraphFormat);
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_ParagraphFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ParagraphFormat;

   function Get_Font
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConditionalStyle_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConditionalStyle_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

end winword.ConditionalStyle_Object;

