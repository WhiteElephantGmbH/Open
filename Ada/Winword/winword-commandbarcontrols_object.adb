package body winword.CommandBarControls_Object is

   function Get_Application
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControls_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControls_Get_Creator);
   end Get_Creator;

   function Add
     (This      : CommandBarControls_Type;
      uType     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Parameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Before    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBarControls_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Temporary,
          2 => Before,
          3 => Parameter,
          4 => Id,
          5 => uType),
         Free);
   end Add;

   function Get_Count
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControls_Get_Count);
   end Get_Count;

   function Get_Item
     (This  : CommandBarControls_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControls_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Getu_NewEnum
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControls_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Parent
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControls_Get_Parent);
   end Get_Parent;

end winword.CommandBarControls_Object;

