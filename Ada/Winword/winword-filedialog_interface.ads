with GNATCOM.Dispinterface;

package winword.FileDialog_Interface is

   type FileDialog_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileDialog_Type);

   function Pointer (This : FileDialog_Type)
     return Pointer_To_FileDialog;

   procedure Attach (This    : in out FileDialog_Type;
                     Pointer : in     Pointer_To_FileDialog);

   function Get_Application
     (This    : FileDialog_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FileDialog_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : FileDialog_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Filters
     (This    : FileDialog_Type)
     return Pointer_To_FileDialogFilters;

   function Get_FilterIndex
     (This        : FileDialog_Type)
     return Interfaces.C.int;

   procedure Put_FilterIndex
     (This        : FileDialog_Type;
      FilterIndex : Interfaces.C.int);

   function Get_Title
     (This  : FileDialog_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Title
     (This  : FileDialog_Type;
      Title : GNATCOM.Types.BSTR;
      Free  : Boolean := True);

   function Get_ButtonName
     (This       : FileDialog_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ButtonName
     (This       : FileDialog_Type;
      ButtonName : GNATCOM.Types.BSTR;
      Free       : Boolean := True);

   function Get_AllowMultiSelect
     (This                  : FileDialog_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AllowMultiSelect
     (This                  : FileDialog_Type;
      pvarfAllowMultiSelect : GNATCOM.Types.VARIANT_BOOL);

   function Get_InitialView
     (This         : FileDialog_Type)
     return MsoFileDialogView;

   procedure Put_InitialView
     (This         : FileDialog_Type;
      pinitialview : MsoFileDialogView);

   function Get_InitialFileName
     (This            : FileDialog_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_InitialFileName
     (This            : FileDialog_Type;
      InitialFileName : GNATCOM.Types.BSTR;
      Free            : Boolean := True);

   function Get_SelectedItems
     (This  : FileDialog_Type)
     return Pointer_To_FileDialogSelectedItems;

   function Get_DialogType
     (This        : FileDialog_Type)
     return MsoFileDialogType;

   function Get_Item
     (This : FileDialog_Type)
     return GNATCOM.Types.BSTR;

   function Show
     (This : FileDialog_Type)
     return Interfaces.C.int;

   procedure Execute
     (This : FileDialog_Type);

end winword.FileDialog_Interface;

