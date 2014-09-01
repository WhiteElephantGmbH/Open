package body winword.SearchFolders_Object is

   function Get_Application
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchFolders_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchFolders_Get_Creator);
   end Get_Creator;

   function Get_Item
     (This  : SearchFolders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         SearchFolders_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchFolders_Get_Count);
   end Get_Count;

   procedure Add
     (This        : SearchFolders_Type;
      ScopeFolder : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         SearchFolders_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ScopeFolder),
         Free);
   end Add;

   procedure Remove
     (This  : SearchFolders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         SearchFolders_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Remove;

   function Getu_NewEnum
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchFolders_Getu_NewEnum);
   end Getu_NewEnum;

end winword.SearchFolders_Object;

