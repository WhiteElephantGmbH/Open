package body winword.HeadersFooters_Object is

   function Get_Application
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadersFooters_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadersFooters_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadersFooters_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadersFooters_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadersFooters_Get_Count);
   end Get_Count;

   function Item
     (This  : HeadersFooters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HeadersFooters_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.HeadersFooters_Object;

