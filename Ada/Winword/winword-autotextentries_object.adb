package body winword.AutoTextEntries_Object is

   function Get_Application
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntries_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntries_Get_Count);
   end Get_Count;

   function Item
     (This  : AutoTextEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoTextEntries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : AutoTextEntries_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoTextEntries_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => Name),
         Free);
   end Add;

   function AppendToSpike
     (This   : AutoTextEntries_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoTextEntries_AppendToSpike,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end AppendToSpike;

end winword.AutoTextEntries_Object;

