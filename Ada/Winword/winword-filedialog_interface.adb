with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileDialog_Interface is

   procedure Initialize (This : in out FileDialog_Type) is
   begin
      Set_IID (This, IID_FileDialog);
   end Initialize;

   function Pointer (This : FileDialog_Type)
     return Pointer_To_FileDialog
   is
   begin
      return To_Pointer_To_FileDialog (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileDialog_Type;
                     Pointer : in     Pointer_To_FileDialog)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : FileDialog_Type)
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
     (This      : FileDialog_Type)
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
     (This   : FileDialog_Type)
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

   function Get_Filters
     (This    : FileDialog_Type)
     return Pointer_To_FileDialogFilters
   is
       RetVal : aliased Pointer_To_FileDialogFilters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Filters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Filters;

   function Get_FilterIndex
     (This        : FileDialog_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FilterIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FilterIndex;

   procedure Put_FilterIndex
     (This        : FileDialog_Type;
      FilterIndex : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FilterIndex
         (Pointer (This),
          FilterIndex));

   end Put_FilterIndex;

   function Get_Title
     (This  : FileDialog_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Title
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Title;

   procedure Put_Title
     (This  : FileDialog_Type;
      Title : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Title
         (Pointer (This),
          Title));

      if Free then
               GNATCOM.Interface.Free (Title);
      
      end if;

   end Put_Title;

   function Get_ButtonName
     (This       : FileDialog_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ButtonName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ButtonName;

   procedure Put_ButtonName
     (This       : FileDialog_Type;
      ButtonName : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ButtonName
         (Pointer (This),
          ButtonName));

      if Free then
               GNATCOM.Interface.Free (ButtonName);
      
      end if;

   end Put_ButtonName;

   function Get_AllowMultiSelect
     (This                  : FileDialog_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowMultiSelect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowMultiSelect;

   procedure Put_AllowMultiSelect
     (This                  : FileDialog_Type;
      pvarfAllowMultiSelect : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowMultiSelect
         (Pointer (This),
          pvarfAllowMultiSelect));

   end Put_AllowMultiSelect;

   function Get_InitialView
     (This         : FileDialog_Type)
     return MsoFileDialogView
   is
       RetVal : aliased MsoFileDialogView;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InitialView
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InitialView;

   procedure Put_InitialView
     (This         : FileDialog_Type;
      pinitialview : MsoFileDialogView)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InitialView
         (Pointer (This),
          pinitialview));

   end Put_InitialView;

   function Get_InitialFileName
     (This            : FileDialog_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InitialFileName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InitialFileName;

   procedure Put_InitialFileName
     (This            : FileDialog_Type;
      InitialFileName : GNATCOM.Types.BSTR;
      Free            : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InitialFileName
         (Pointer (This),
          InitialFileName));

      if Free then
               GNATCOM.Interface.Free (InitialFileName);
      
      end if;

   end Put_InitialFileName;

   function Get_SelectedItems
     (This  : FileDialog_Type)
     return Pointer_To_FileDialogSelectedItems
   is
       RetVal : aliased Pointer_To_FileDialogSelectedItems;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SelectedItems
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SelectedItems;

   function Get_DialogType
     (This        : FileDialog_Type)
     return MsoFileDialogType
   is
       RetVal : aliased MsoFileDialogType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DialogType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DialogType;

   function Get_Item
     (This : FileDialog_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Show
     (This : FileDialog_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Show
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Show;

   procedure Execute
     (This : FileDialog_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This)));

   end Execute;

end winword.FileDialog_Interface;

