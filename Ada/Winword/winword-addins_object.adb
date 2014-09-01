package body winword.AddIns_Object is

   function Get_Application
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIns_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIns_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIns_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIns_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIns_Get_Count);
   end Get_Count;

   function Item
     (This  : AddIns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AddIns_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This     : AddIns_Type;
      FileName : GNATCOM.Types.VARIANT;
      Install  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AddIns_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Install,
          2 => FileName),
         Free);
   end Add;

   procedure Unload
     (This           : AddIns_Type;
      RemoveFromList : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         AddIns_Unload,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RemoveFromList),
         Free);
   end Unload;

end winword.AddIns_Object;

