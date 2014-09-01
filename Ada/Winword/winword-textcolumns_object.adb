package body winword.TextColumns_Object is

   function Getu_NewEnum
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_Count);
   end Get_Count;

   function Get_Application
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_Parent);
   end Get_Parent;

   function Get_EvenlySpaced
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_EvenlySpaced);
   end Get_EvenlySpaced;

   procedure Put_EvenlySpaced
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumns_Put_EvenlySpaced,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EvenlySpaced;

   function Get_LineBetween
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_LineBetween);
   end Get_LineBetween;

   procedure Put_LineBetween
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumns_Put_LineBetween,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineBetween;

   function Get_Width
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumns_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Spacing
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_Spacing);
   end Get_Spacing;

   procedure Put_Spacing
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumns_Put_Spacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Spacing;

   function Item
     (This  : TextColumns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TextColumns_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This         : TextColumns_Type;
      Width        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Spacing      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EvenlySpaced : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TextColumns_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EvenlySpaced,
          2 => Spacing,
          3 => Width),
         Free);
   end Add;

   procedure SetCount
     (This       : TextColumns_Type;
      NumColumns : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         TextColumns_SetCount,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumColumns),
         Free);
   end SetCount;

   function Get_FlowDirection
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumns_Get_FlowDirection);
   end Get_FlowDirection;

   procedure Put_FlowDirection
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumns_Put_FlowDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FlowDirection;

end winword.TextColumns_Object;

