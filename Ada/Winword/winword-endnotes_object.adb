package body winword.Endnotes_Object is

   function Getu_NewEnum
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_Parent);
   end Get_Parent;

   function Get_Location
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_Location);
   end Get_Location;

   procedure Put_Location
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Endnotes_Put_Location,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Location;

   function Get_NumberStyle
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Endnotes_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_StartingNumber
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_StartingNumber);
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Endnotes_Put_StartingNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartingNumber;

   function Get_NumberingRule
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_NumberingRule);
   end Get_NumberingRule;

   procedure Put_NumberingRule
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Endnotes_Put_NumberingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberingRule;

   function Get_Separator
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_Separator);
   end Get_Separator;

   function Get_ContinuationSeparator
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_ContinuationSeparator);
   end Get_ContinuationSeparator;

   function Get_ContinuationNotice
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnotes_Get_ContinuationNotice);
   end Get_ContinuationNotice;

   function Item
     (This  : Endnotes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Endnotes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This      : Endnotes_Type;
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
         Endnotes_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text,
          2 => Reference,
          3 => uRange),
         Free);
   end Add;

   procedure Convert
     (This : Endnotes_Type)
   is
   begin
      Invoke (This, Endnotes_Convert);
   end Convert;

   procedure SwapWithFootnotes
     (This : Endnotes_Type)
   is
   begin
      Invoke (This, Endnotes_SwapWithFootnotes);
   end SwapWithFootnotes;

   procedure ResetSeparator
     (This : Endnotes_Type)
   is
   begin
      Invoke (This, Endnotes_ResetSeparator);
   end ResetSeparator;

   procedure ResetContinuationSeparator
     (This : Endnotes_Type)
   is
   begin
      Invoke (This, Endnotes_ResetContinuationSeparator);
   end ResetContinuationSeparator;

   procedure ResetContinuationNotice
     (This : Endnotes_Type)
   is
   begin
      Invoke (This, Endnotes_ResetContinuationNotice);
   end ResetContinuationNotice;

end winword.Endnotes_Object;

