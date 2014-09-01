package body winword.Comments_Object is

   function Getu_NewEnum
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comments_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comments_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comments_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comments_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comments_Get_Parent);
   end Get_Parent;

   function Get_ShowBy
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comments_Get_ShowBy);
   end Get_ShowBy;

   procedure Put_ShowBy
     (This : Comments_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Comments_Put_ShowBy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowBy;

   function Item
     (This  : Comments_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Comments_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : Comments_Type;
      uRange : GNATCOM.Types.VARIANT;
      Text   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Comments_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text,
          2 => uRange),
         Free);
   end Add;

end winword.Comments_Object;

