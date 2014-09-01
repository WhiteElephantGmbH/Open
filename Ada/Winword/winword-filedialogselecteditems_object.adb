package body winword.FileDialogSelectedItems_Object is

   function Get_Application
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogSelectedItems_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogSelectedItems_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogSelectedItems_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogSelectedItems_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogSelectedItems_Get_Count);
   end Get_Count;

   function Item
     (This  : FileDialogSelectedItems_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FileDialogSelectedItems_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.FileDialogSelectedItems_Object;

