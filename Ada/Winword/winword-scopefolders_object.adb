package body winword.ScopeFolders_Object is

   function Get_Application
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolders_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolders_Get_Creator);
   end Get_Creator;

   function Get_Item
     (This  : ScopeFolders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         ScopeFolders_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolders_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolders_Getu_NewEnum);
   end Getu_NewEnum;

end winword.ScopeFolders_Object;

