package body winword.HTMLDivisions_Object is

   function Get_Application
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivisions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivisions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivisions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivisions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivisions_Get_Count);
   end Get_Count;

   function Get_NestingLevel
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivisions_Get_NestingLevel);
   end Get_NestingLevel;

   function Add
     (This   : HTMLDivisions_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HTMLDivisions_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end Add;

   function Item
     (This  : HTMLDivisions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HTMLDivisions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.HTMLDivisions_Object;

