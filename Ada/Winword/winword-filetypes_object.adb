package body winword.FileTypes_Object is

   function Get_Application
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileTypes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileTypes_Get_Creator);
   end Get_Creator;

   function Get_Item
     (This  : FileTypes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         FileTypes_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileTypes_Get_Count);
   end Get_Count;

   procedure Add
     (This     : FileTypes_Type;
      FileType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         FileTypes_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileType),
         Free);
   end Add;

   procedure Remove
     (This  : FileTypes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         FileTypes_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Remove;

   function Getu_NewEnum
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileTypes_Getu_NewEnum);
   end Getu_NewEnum;

end winword.FileTypes_Object;

