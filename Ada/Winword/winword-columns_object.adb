package body winword.Columns_Object is

   function Getu_NewEnum
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Parent);
   end Get_Parent;

   function Get_First
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_First);
   end Get_First;

   function Get_Last
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Last);
   end Get_Last;

   function Get_Width
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Columns_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Borders
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Columns_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_Shading);
   end Get_Shading;

   function Item
     (This  : Columns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Columns_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This         : Columns_Type;
      BeforeColumn : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Columns_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => BeforeColumn),
         Free);
   end Add;

   procedure uSelect
     (This : Columns_Type)
   is
   begin
      Invoke (This, Columns_uSelect);
   end uSelect;

   procedure Delete
     (This : Columns_Type)
   is
   begin
      Invoke (This, Columns_Delete);
   end Delete;

   procedure SetWidth
     (This        : Columns_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         Columns_SetWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RulerStyle,
          2 => ColumnWidth),
         Free);
   end SetWidth;

   procedure AutoFit
     (This : Columns_Type)
   is
   begin
      Invoke (This, Columns_AutoFit);
   end AutoFit;

   procedure DistributeWidth
     (This : Columns_Type)
   is
   begin
      Invoke (This, Columns_DistributeWidth);
   end DistributeWidth;

   function Get_NestingLevel
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_PreferredWidth
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_PreferredWidth);
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Columns_Put_PreferredWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Columns_Get_PreferredWidthType);
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Columns_Put_PreferredWidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidthType;

end winword.Columns_Object;

