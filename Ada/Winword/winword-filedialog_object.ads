with GNATCOM.Dispinterface;

package winword.FileDialog_Object is

   type FileDialog_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Filters
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FilterIndex
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FilterIndex
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Title
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Title
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ButtonName
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ButtonName
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowMultiSelect
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowMultiSelect
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InitialView
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InitialView
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InitialFileName
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InitialFileName
     (This : FileDialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SelectedItems
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DialogType
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   function Show
     (This : FileDialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Execute
     (This : FileDialog_Type);

end winword.FileDialog_Object;

