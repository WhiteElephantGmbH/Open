with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileDialogFilters_Interface is

   procedure Initialize (This : in out FileDialogFilters_Type) is
   begin
      Set_IID (This, IID_FileDialogFilters);
   end Initialize;

   function Pointer (This : FileDialogFilters_Type)
     return Pointer_To_FileDialogFilters
   is
   begin
      return To_Pointer_To_FileDialogFilters (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileDialogFilters_Type;
                     Pointer : in     Pointer_To_FileDialogFilters)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : FileDialogFilters_Type)
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
     (This      : FileDialogFilters_Type)
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

   function Get_Parent
     (This   : FileDialogFilters_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Getu_NewEnum
     (This    : FileDialogFilters_Type)
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

   function Get_Count
     (This      : FileDialogFilters_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Item
     (This  : FileDialogFilters_Type;
      Index : Interfaces.C.int)
     return Pointer_To_FileDialogFilter
   is
       RetVal : aliased Pointer_To_FileDialogFilter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   procedure Delete
     (This   : FileDialogFilters_Type;
      filter : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          filter));

      if Free then
               GNATCOM.Interface.Free (filter);
      
      end if;

   end Delete;

   procedure Clear
     (This : FileDialogFilters_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Clear
         (Pointer (This)));

   end Clear;

   function Add
     (This        : FileDialogFilters_Type;
      Description : GNATCOM.Types.BSTR;
      Extensions  : GNATCOM.Types.BSTR;
      Position    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return Pointer_To_FileDialogFilter
   is
       RetVal : aliased Pointer_To_FileDialogFilter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Description,
          Extensions,
          Position,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Description);
               GNATCOM.Interface.Free (Extensions);
               GNATCOM.Interface.Free (Position);
      
      end if;

      return RetVal;
   end Add;

end winword.FileDialogFilters_Interface;

