package body winword.TextFrame_Object is

   function Get_Application
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Parent);
   end Get_Parent;

   function Get_MarginBottom
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_MarginBottom);
   end Get_MarginBottom;

   procedure Put_MarginBottom
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_MarginBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MarginBottom;

   function Get_MarginLeft
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_MarginLeft);
   end Get_MarginLeft;

   procedure Put_MarginLeft
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_MarginLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MarginLeft;

   function Get_MarginRight
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_MarginRight);
   end Get_MarginRight;

   procedure Put_MarginRight
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_MarginRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MarginRight;

   function Get_MarginTop
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_MarginTop);
   end Get_MarginTop;

   procedure Put_MarginTop
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_MarginTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MarginTop;

   function Get_Orientation
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Orientation);
   end Get_Orientation;

   procedure Put_Orientation
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_Orientation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Orientation;

   function Get_TextRange
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_TextRange);
   end Get_TextRange;

   function Get_ContainingRange
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_ContainingRange);
   end Get_ContainingRange;

   function Get_Next
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Next);
   end Get_Next;

   procedure Put_Next
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_Next,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Next;

   function Get_Previous
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Previous);
   end Get_Previous;

   procedure Put_Previous
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_Previous,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Previous;

   function Get_Overflowing
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_Overflowing);
   end Get_Overflowing;

   function Get_HasText
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_HasText);
   end Get_HasText;

   procedure BreakForwardLink
     (This : TextFrame_Type)
   is
   begin
      Invoke (This, TextFrame_BreakForwardLink);
   end BreakForwardLink;

   function ValidLinkTarget
     (This            : TextFrame_Type;
      TargetTextFrame : GNATCOM.Types.VARIANT;
      Free            : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TextFrame_ValidLinkTarget,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => TargetTextFrame),
         Free);
   end ValidLinkTarget;

   function Get_AutoSize
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_AutoSize);
   end Get_AutoSize;

   procedure Put_AutoSize
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_AutoSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoSize;

   function Get_WordWrap
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextFrame_Get_WordWrap);
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextFrame_Put_WordWrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WordWrap;

end winword.TextFrame_Object;

