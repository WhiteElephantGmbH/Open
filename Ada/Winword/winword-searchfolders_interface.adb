with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SearchFolders_Interface is

   procedure Initialize (This : in out SearchFolders_Type) is
   begin
      Set_IID (This, IID_SearchFolders);
   end Initialize;

   function Pointer (This : SearchFolders_Type)
     return Pointer_To_SearchFolders
   is
   begin
      return To_Pointer_To_SearchFolders (Address (This));
   end Pointer;

   procedure Attach (This    : in out SearchFolders_Type;
                     Pointer : in     Pointer_To_SearchFolders)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : SearchFolders_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : SearchFolders_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Item
     (This           : SearchFolders_Type;
      Index          : Interfaces.C.int)
     return Pointer_To_ScopeFolder
   is
       RetVal : aliased Pointer_To_ScopeFolder;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Count
     (This         : SearchFolders_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   procedure Add
     (This        : SearchFolders_Type;
      ScopeFolder : Pointer_To_ScopeFolder)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          ScopeFolder));

   end Add;

   procedure Remove
     (This  : SearchFolders_Type;
      Index : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          Index));

   end Remove;

   function Getu_NewEnum
     (This      : SearchFolders_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

end winword.SearchFolders_Interface;

