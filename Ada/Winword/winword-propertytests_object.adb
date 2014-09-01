package body winword.PropertyTests_Object is

   function Get_Application
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTests_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTests_Get_Creator);
   end Get_Creator;

   function Get_Item
     (This  : PropertyTests_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         PropertyTests_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTests_Get_Count);
   end Get_Count;

   procedure Add
     (This        : PropertyTests_Type;
      Name        : GNATCOM.Types.VARIANT;
      Condition   : GNATCOM.Types.VARIANT;
      Value       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SecondValue : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Connector   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         PropertyTests_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Connector,
          2 => SecondValue,
          3 => Value,
          4 => Condition,
          5 => Name),
         Free);
   end Add;

   procedure Remove
     (This  : PropertyTests_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         PropertyTests_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Remove;

   function Getu_NewEnum
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTests_Getu_NewEnum);
   end Getu_NewEnum;

end winword.PropertyTests_Object;

