package body winword.Footnotes_Object is

   function Getu_NewEnum
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_Parent);
   end Get_Parent;

   function Get_Location
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_Location);
   end Get_Location;

   procedure Put_Location
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Footnotes_Put_Location,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Location;

   function Get_NumberStyle
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Footnotes_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_StartingNumber
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_StartingNumber);
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Footnotes_Put_StartingNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartingNumber;

   function Get_NumberingRule
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_NumberingRule);
   end Get_NumberingRule;

   procedure Put_NumberingRule
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Footnotes_Put_NumberingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberingRule;

   function Get_Separator
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_Separator);
   end Get_Separator;

   function Get_ContinuationSeparator
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_ContinuationSeparator);
   end Get_ContinuationSeparator;

   function Get_ContinuationNotice
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnotes_Get_ContinuationNotice);
   end Get_ContinuationNotice;

   function Item
     (This  : Footnotes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Footnotes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This      : Footnotes_Type;
      uRange    : GNATCOM.Types.VARIANT;
      Reference : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Text      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Footnotes_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text,
          2 => Reference,
          3 => uRange),
         Free);
   end Add;

   procedure Convert
     (This : Footnotes_Type)
   is
   begin
      Invoke (This, Footnotes_Convert);
   end Convert;

   procedure SwapWithEndnotes
     (This : Footnotes_Type)
   is
   begin
      Invoke (This, Footnotes_SwapWithEndnotes);
   end SwapWithEndnotes;

   procedure ResetSeparator
     (This : Footnotes_Type)
   is
   begin
      Invoke (This, Footnotes_ResetSeparator);
   end ResetSeparator;

   procedure ResetContinuationSeparator
     (This : Footnotes_Type)
   is
   begin
      Invoke (This, Footnotes_ResetContinuationSeparator);
   end ResetContinuationSeparator;

   procedure ResetContinuationNotice
     (This : Footnotes_Type)
   is
   begin
      Invoke (This, Footnotes_ResetContinuationNotice);
   end ResetContinuationNotice;

end winword.Footnotes_Object;

