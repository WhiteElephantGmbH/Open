package body winword.TwoInitialCapsExceptions_Object is

   function Get_Application
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsExceptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsExceptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsExceptions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsExceptions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsExceptions_Get_Count);
   end Get_Count;

   function Item
     (This  : TwoInitialCapsExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TwoInitialCapsExceptions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This : TwoInitialCapsExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TwoInitialCapsExceptions_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Add;

end winword.TwoInitialCapsExceptions_Object;

