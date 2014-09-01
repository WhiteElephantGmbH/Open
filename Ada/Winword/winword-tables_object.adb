package body winword.Tables_Object is

   function Getu_NewEnum
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tables_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tables_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tables_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tables_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tables_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Tables_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Tables_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddOld
     (This       : Tables_Type;
      uRange     : GNATCOM.Types.VARIANT;
      NumRows    : GNATCOM.Types.VARIANT;
      NumColumns : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Tables_AddOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumColumns,
          2 => NumRows,
          3 => uRange),
         Free);
   end AddOld;

   function Add
     (This                 : Tables_Type;
      uRange               : GNATCOM.Types.VARIANT;
      NumRows              : GNATCOM.Types.VARIANT;
      NumColumns           : GNATCOM.Types.VARIANT;
      DefaultTableBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoFitBehavior      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Tables_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AutoFitBehavior,
          2 => DefaultTableBehavior,
          3 => NumColumns,
          4 => NumRows,
          5 => uRange),
         Free);
   end Add;

   function Get_NestingLevel
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tables_Get_NestingLevel);
   end Get_NestingLevel;

end winword.Tables_Object;

