package body winword.OtherCorrectionsExceptions_Object is

   function Get_Application
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsExceptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsExceptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsExceptions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsExceptions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsExceptions_Get_Count);
   end Get_Count;

   function Item
     (This  : OtherCorrectionsExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         OtherCorrectionsExceptions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This : OtherCorrectionsExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         OtherCorrectionsExceptions_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Add;

end winword.OtherCorrectionsExceptions_Object;

