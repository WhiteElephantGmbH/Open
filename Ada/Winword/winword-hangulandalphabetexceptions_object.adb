package body winword.HangulAndAlphabetExceptions_Object is

   function Get_Application
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetExceptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetExceptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetExceptions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetExceptions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetExceptions_Get_Count);
   end Get_Count;

   function Item
     (This  : HangulAndAlphabetExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HangulAndAlphabetExceptions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This : HangulAndAlphabetExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HangulAndAlphabetExceptions_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Add;

end winword.HangulAndAlphabetExceptions_Object;

