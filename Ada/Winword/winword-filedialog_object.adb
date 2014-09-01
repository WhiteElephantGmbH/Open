package body winword.FileDialog_Object is

   function Get_Application
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_Parent);
   end Get_Parent;

   function Get_Filters
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_Filters);
   end Get_Filters;

   function Get_FilterIndex
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_FilterIndex);
   end Get_FilterIndex;

   procedure Put_FilterIndex
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileDialog_Put_FilterIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FilterIndex;

   function Get_Title
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_Title);
   end Get_Title;

   procedure Put_Title
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileDialog_Put_Title,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Title;

   function Get_ButtonName
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_ButtonName);
   end Get_ButtonName;

   procedure Put_ButtonName
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileDialog_Put_ButtonName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ButtonName;

   function Get_AllowMultiSelect
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_AllowMultiSelect);
   end Get_AllowMultiSelect;

   procedure Put_AllowMultiSelect
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileDialog_Put_AllowMultiSelect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowMultiSelect;

   function Get_InitialView
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_InitialView);
   end Get_InitialView;

   procedure Put_InitialView
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileDialog_Put_InitialView,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InitialView;

   function Get_InitialFileName
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_InitialFileName);
   end Get_InitialFileName;

   procedure Put_InitialFileName
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileDialog_Put_InitialFileName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InitialFileName;

   function Get_SelectedItems
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_SelectedItems);
   end Get_SelectedItems;

   function Get_DialogType
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_DialogType);
   end Get_DialogType;

   function Get_Item
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialog_Get_Item);
   end Get_Item;

   function Show
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, FileDialog_Show);
   end Show;

   procedure Execute
     (This : FileDialog_Type)
   is
   begin
      Invoke (This, FileDialog_Execute);
   end Execute;

end winword.FileDialog_Object;

