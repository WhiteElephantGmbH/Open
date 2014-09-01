package body winword.FileDialogFilters_Object is

   function Get_Application
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilters_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilters_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilters_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilters_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilters_Get_Count);
   end Get_Count;

   function Item
     (This  : FileDialogFilters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FileDialogFilters_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure Delete
     (This   : FileDialogFilters_Type;
      filter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         FileDialogFilters_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => filter),
         Free);
   end Delete;

   procedure Clear
     (This : FileDialogFilters_Type)
   is
   begin
      Invoke (This, FileDialogFilters_Clear);
   end Clear;

   function Add
     (This        : FileDialogFilters_Type;
      Description : GNATCOM.Types.VARIANT;
      Extensions  : GNATCOM.Types.VARIANT;
      Position    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FileDialogFilters_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Position,
          2 => Extensions,
          3 => Description),
         Free);
   end Add;

end winword.FileDialogFilters_Object;

