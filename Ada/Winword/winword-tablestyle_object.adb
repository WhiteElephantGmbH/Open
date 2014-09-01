package body winword.TableStyle_Object is

   function Get_Application
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Parent);
   end Get_Parent;

   function Get_AllowPageBreaks
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_AllowPageBreaks);
   end Get_AllowPageBreaks;

   procedure Put_AllowPageBreaks
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_AllowPageBreaks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowPageBreaks;

   function Get_Borders
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_BottomPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_BottomPadding);
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_BottomPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BottomPadding;

   function Get_LeftPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_LeftPadding);
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_LeftPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftPadding;

   function Get_TopPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_TopPadding);
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_TopPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopPadding;

   function Get_RightPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_RightPadding);
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_RightPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightPadding;

   function Get_Alignment
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_Spacing
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Spacing);
   end Get_Spacing;

   procedure Put_Spacing
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_Spacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Spacing;

   function Condition
     (This          : TableStyle_Type;
      ConditionCode : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TableStyle_Condition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ConditionCode),
         Free);
   end Condition;

   function Get_TableDirection
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_TableDirection);
   end Get_TableDirection;

   procedure Put_TableDirection
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_TableDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TableDirection;

   function Get_AllowBreakAcrossPage
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_AllowBreakAcrossPage);
   end Get_AllowBreakAcrossPage;

   procedure Put_AllowBreakAcrossPage
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_AllowBreakAcrossPage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowBreakAcrossPage;

   function Get_LeftIndent
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_Shading
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_Shading);
   end Get_Shading;

   function Get_RowStripe
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_RowStripe);
   end Get_RowStripe;

   procedure Put_RowStripe
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_RowStripe,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RowStripe;

   function Get_ColumnStripe
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableStyle_Get_ColumnStripe);
   end Get_ColumnStripe;

   procedure Put_ColumnStripe
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableStyle_Put_ColumnStripe,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ColumnStripe;

end winword.TableStyle_Object;

