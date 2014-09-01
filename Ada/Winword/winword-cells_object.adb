package body winword.Cells_Object is

   function Getu_NewEnum
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Parent);
   end Get_Parent;

   function Get_Width
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Height
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HeightRule
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_HeightRule);
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_HeightRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeightRule;

   function Get_VerticalAlignment
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_VerticalAlignment);
   end Get_VerticalAlignment;

   procedure Put_VerticalAlignment
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_VerticalAlignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalAlignment;

   function Get_Borders
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_Shading);
   end Get_Shading;

   function Item
     (This  : Cells_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Cells_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This       : Cells_Type;
      BeforeCell : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Cells_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => BeforeCell),
         Free);
   end Add;

   procedure Delete
     (This       : Cells_Type;
      ShiftCells : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cells_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ShiftCells),
         Free);
   end Delete;

   procedure SetWidth
     (This        : Cells_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cells_SetWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RulerStyle,
          2 => ColumnWidth),
         Free);
   end SetWidth;

   procedure SetHeight
     (This       : Cells_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cells_SetHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeightRule,
          2 => RowHeight),
         Free);
   end SetHeight;

   procedure Merge
     (This : Cells_Type)
   is
   begin
      Invoke (This, Cells_Merge);
   end Merge;

   procedure Split
     (This             : Cells_Type;
      NumRows          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumColumns       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MergeBeforeSplit : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cells_Split,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => MergeBeforeSplit,
          2 => NumColumns,
          3 => NumRows),
         Free);
   end Split;

   procedure DistributeHeight
     (This : Cells_Type)
   is
   begin
      Invoke (This, Cells_DistributeHeight);
   end DistributeHeight;

   procedure DistributeWidth
     (This : Cells_Type)
   is
   begin
      Invoke (This, Cells_DistributeWidth);
   end DistributeWidth;

   procedure AutoFit
     (This : Cells_Type)
   is
   begin
      Invoke (This, Cells_AutoFit);
   end AutoFit;

   function Get_NestingLevel
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_PreferredWidth
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_PreferredWidth);
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_PreferredWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cells_Get_PreferredWidthType);
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cells_Put_PreferredWidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidthType;

end winword.Cells_Object;

