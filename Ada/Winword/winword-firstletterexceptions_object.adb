package body winword.FirstLetterExceptions_Object is

   function Get_Application
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterExceptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterExceptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterExceptions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterExceptions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterExceptions_Get_Count);
   end Get_Count;

   function Item
     (This  : FirstLetterExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FirstLetterExceptions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This : FirstLetterExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FirstLetterExceptions_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Add;

end winword.FirstLetterExceptions_Object;

