package body winword.ListParagraphs_Object is

   function Getu_NewEnum
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListParagraphs_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListParagraphs_Get_Count);
   end Get_Count;

   function Get_Application
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListParagraphs_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListParagraphs_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListParagraphs_Get_Parent);
   end Get_Parent;

   function Item
     (This  : ListParagraphs_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListParagraphs_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.ListParagraphs_Object;

