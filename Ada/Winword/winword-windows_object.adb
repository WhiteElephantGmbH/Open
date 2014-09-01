package body winword.Windows_Object is

   function Getu_NewEnum
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Windows_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Windows_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Windows_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Windows_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Windows_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Windows_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Windows_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : Windows_Type;
      Window : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Windows_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Window),
         Free);
   end Add;

   procedure Arrange
     (This         : Windows_Type;
      ArrangeStyle : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         Windows_Arrange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ArrangeStyle),
         Free);
   end Arrange;

end winword.Windows_Object;

