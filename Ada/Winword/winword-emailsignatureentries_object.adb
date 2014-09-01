package body winword.EmailSignatureEntries_Object is

   function Get_Application
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntries_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntries_Get_Count);
   end Get_Count;

   function Item
     (This  : EmailSignatureEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         EmailSignatureEntries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : EmailSignatureEntries_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         EmailSignatureEntries_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => Name),
         Free);
   end Add;

end winword.EmailSignatureEntries_Object;

