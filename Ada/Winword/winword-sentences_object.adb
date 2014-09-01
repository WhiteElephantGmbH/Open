package body winword.Sentences_Object is

   function Getu_NewEnum
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Get_Count);
   end Get_Count;

   function Get_First
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Get_First);
   end Get_First;

   function Get_Last
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Get_Last);
   end Get_Last;

   function Get_Application
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sentences_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Sentences_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Sentences_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Sentences_Object;

