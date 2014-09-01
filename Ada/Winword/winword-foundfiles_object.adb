package body winword.FoundFiles_Object is

   function Get_Application
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FoundFiles_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FoundFiles_Get_Creator);
   end Get_Creator;

   function Get_Item
     (This  : FoundFiles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         FoundFiles_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FoundFiles_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FoundFiles_Getu_NewEnum);
   end Getu_NewEnum;

end winword.FoundFiles_Object;

