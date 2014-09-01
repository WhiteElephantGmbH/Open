package body winword.StyleSheets_Object is

   function Get_Application
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheets_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheets_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheets_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheets_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheets_Get_Count);
   end Get_Count;

   function Item
     (This  : StyleSheets_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         StyleSheets_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This       : StyleSheets_Type;
      FileName   : GNATCOM.Types.VARIANT;
      LinkType   : GNATCOM.Types.VARIANT;
      Title      : GNATCOM.Types.VARIANT;
      Precedence : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         StyleSheets_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Precedence,
          2 => Title,
          3 => LinkType,
          4 => FileName),
         Free);
   end Add;

end winword.StyleSheets_Object;

