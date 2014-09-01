package body winword.Adjustments_Object is

   function Get_Application
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Adjustments_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Adjustments_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Adjustments_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Adjustments_Get_Count);
   end Get_Count;

   function Get_Item
     (This  : Adjustments_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Adjustments_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   procedure Put_Item
     (This  : Adjustments_Type;
      Index : GNATCOM.Types.VARIANT;
      P2    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Put
        (This,
         Adjustments_Put_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => Index),
         Free);
   end Put_Item;

end winword.Adjustments_Object;

