package body winword.HangulHanjaConversionDictionaries_Object is

   function Get_Application
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_Count);
   end Get_Count;

   function Get_Maximum
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_Maximum);
   end Get_Maximum;

   function Get_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_ActiveCustomDictionary);
   end Get_ActiveCustomDictionary;

   procedure Put_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HangulHanjaConversionDictionaries_Put_ActiveCustomDictionary,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ActiveCustomDictionary;

   function Get_BuiltinDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulHanjaConversionDictionaries_Get_BuiltinDictionary);
   end Get_BuiltinDictionary;

   function Item
     (This  : HangulHanjaConversionDictionaries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HangulHanjaConversionDictionaries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This     : HangulHanjaConversionDictionaries_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HangulHanjaConversionDictionaries_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Add;

   procedure ClearAll
     (This : HangulHanjaConversionDictionaries_Type)
   is
   begin
      Invoke (This, HangulHanjaConversionDictionaries_ClearAll);
   end ClearAll;

end winword.HangulHanjaConversionDictionaries_Object;

