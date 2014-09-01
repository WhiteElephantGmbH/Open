package body winword.Panes_Object is

   function Getu_NewEnum
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Panes_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Panes_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Panes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Panes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Panes_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Panes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Panes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This          : Panes_Type;
      SplitVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Panes_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SplitVertical),
         Free);
   end Add;

end winword.Panes_Object;

