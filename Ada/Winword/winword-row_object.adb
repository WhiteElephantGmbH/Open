package body winword.Row_Object is

   function Get_Range
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Range);
   end Get_Range;

   function Get_Application
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Parent);
   end Get_Parent;

   function Get_AllowBreakAcrossPages
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_AllowBreakAcrossPages);
   end Get_AllowBreakAcrossPages;

   procedure Put_AllowBreakAcrossPages
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_AllowBreakAcrossPages,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowBreakAcrossPages;

   function Get_Alignment
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_HeadingFormat
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_HeadingFormat);
   end Get_HeadingFormat;

   procedure Put_HeadingFormat
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_HeadingFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeadingFormat;

   function Get_SpaceBetweenColumns
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_SpaceBetweenColumns);
   end Get_SpaceBetweenColumns;

   procedure Put_SpaceBetweenColumns
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_SpaceBetweenColumns,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBetweenColumns;

   function Get_Height
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HeightRule
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_HeightRule);
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_HeightRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeightRule;

   function Get_LeftIndent
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_IsLast
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_IsLast);
   end Get_IsLast;

   function Get_IsFirst
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_IsFirst);
   end Get_IsFirst;

   function Get_Index
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Index);
   end Get_Index;

   function Get_Cells
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Cells);
   end Get_Cells;

   function Get_Borders
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Shading);
   end Get_Shading;

   function Get_Next
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_Previous);
   end Get_Previous;

   procedure uSelect
     (This : Row_Type)
   is
   begin
      Invoke (This, Row_uSelect);
   end uSelect;

   procedure Delete
     (This : Row_Type)
   is
   begin
      Invoke (This, Row_Delete);
   end Delete;

   procedure SetLeftIndent
     (This       : Row_Type;
      LeftIndent : GNATCOM.Types.VARIANT;
      RulerStyle : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Row_SetLeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RulerStyle,
          2 => LeftIndent),
         Free);
   end SetLeftIndent;

   procedure SetHeight
     (This       : Row_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Row_SetHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeightRule,
          2 => RowHeight),
         Free);
   end SetHeight;

   function ConvertToTextOld
     (This      : Row_Type;
      Separator : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Row_ConvertToTextOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Separator),
         Free);
   end ConvertToTextOld;

   function ConvertToText
     (This         : Row_Type;
      Separator    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NestedTables : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Row_ConvertToText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NestedTables,
          2 => Separator),
         Free);
   end ConvertToText;

   function Get_NestingLevel
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_ID
     (This : Row_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Row_Get_ID);
   end Get_ID;

   procedure Put_ID
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Row_Put_ID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ID;

end winword.Row_Object;

