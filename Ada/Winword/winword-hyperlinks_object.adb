package body winword.Hyperlinks_Object is

   function Get_Application
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlinks_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlinks_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlinks_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlinks_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlinks_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : Hyperlinks_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Hyperlinks_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function uAdd
     (This       : Hyperlinks_Type;
      Anchor     : GNATCOM.Types.VARIANT;
      Address    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubAddress : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Hyperlinks_uAdd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SubAddress,
          2 => Address,
          3 => Anchor),
         Free);
   end uAdd;

   function Add
     (This          : Hyperlinks_Type;
      Anchor        : GNATCOM.Types.VARIANT;
      Address       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubAddress    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ScreenTip     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TextToDisplay : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Target        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Hyperlinks_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Target,
          2 => TextToDisplay,
          3 => ScreenTip,
          4 => SubAddress,
          5 => Address,
          6 => Anchor),
         Free);
   end Add;

end winword.Hyperlinks_Object;

