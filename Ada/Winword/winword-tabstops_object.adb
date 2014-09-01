package body winword.TabStops_Object is

   function Getu_NewEnum
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStops_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStops_Get_Count);
   end Get_Count;

   function Get_Application
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStops_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStops_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStops_Get_Parent);
   end Get_Parent;

   function Item
     (This  : TabStops_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TabStops_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This      : TabStops_Type;
      Position  : GNATCOM.Types.VARIANT;
      Alignment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Leader    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TabStops_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Leader,
          2 => Alignment,
          3 => Position),
         Free);
   end Add;

   procedure ClearAll
     (This : TabStops_Type)
   is
   begin
      Invoke (This, TabStops_ClearAll);
   end ClearAll;

   function Before
     (This     : TabStops_Type;
      Position : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TabStops_Before,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Position),
         Free);
   end Before;

   function After
     (This     : TabStops_Type;
      Position : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TabStops_After,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Position),
         Free);
   end After;

end winword.TabStops_Object;

