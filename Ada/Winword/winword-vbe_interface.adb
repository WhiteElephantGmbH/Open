with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.VBE_Interface is

   procedure Initialize (This : in out VBE_Type) is
   begin
      Set_IID (This, IID_VBE);
   end Initialize;

   function Pointer (This : VBE_Type)
     return Pointer_To_VBE
   is
   begin
      return To_Pointer_To_VBE (Address (This));
   end Pointer;

   procedure Attach (This    : in out VBE_Type;
                     Pointer : in     Pointer_To_VBE)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Version
     (This         : VBE_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Version
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Version;

   function Get_VBProjects
     (This        : VBE_Type)
     return Pointer_To_uVBProjects
   is
       RetVal : aliased Pointer_To_uVBProjects;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBProjects
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBProjects;

   function Get_CommandBars
     (This  : VBE_Type)
     return Pointer_To_uCommandBars
   is
       RetVal : aliased Pointer_To_uCommandBars;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandBars
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandBars;

   function Get_CodePanes
     (This        : VBE_Type)
     return Pointer_To_uCodePanes
   is
       RetVal : aliased Pointer_To_uCodePanes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CodePanes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CodePanes;

   function Get_Windows
     (This           : VBE_Type)
     return Pointer_To_uWindows
   is
       RetVal : aliased Pointer_To_uWindows;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Windows
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Windows;

   function Get_Events
     (This        : VBE_Type)
     return Pointer_To_Events
   is
       RetVal : aliased Pointer_To_Events;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Events
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Events;

   function Get_ActiveVBProject
     (This        : VBE_Type)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveVBProject
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveVBProject;

   procedure PutRef_ActiveVBProject
     (This        : VBE_Type;
      lppptReturn : Pointer_To_uVBProject)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PutRef_ActiveVBProject
         (Pointer (This),
          lppptReturn));

   end PutRef_ActiveVBProject;

   function Get_SelectedVBComponent
     (This        : VBE_Type)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SelectedVBComponent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SelectedVBComponent;

   function Get_MainWindow
     (This  : VBE_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MainWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MainWindow;

   function Get_ActiveWindow
     (This        : VBE_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveWindow;

   function Get_ActiveCodePane
     (This       : VBE_Type)
     return Pointer_To_uCodePane
   is
       RetVal : aliased Pointer_To_uCodePane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveCodePane
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveCodePane;

   procedure PutRef_ActiveCodePane
     (This       : VBE_Type;
      ppCodePane : Pointer_To_uCodePane)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PutRef_ActiveCodePane
         (Pointer (This),
          ppCodePane));

   end PutRef_ActiveCodePane;

   function Get_Addins
     (This       : VBE_Type)
     return Pointer_To_uAddIns
   is
       RetVal : aliased Pointer_To_uAddIns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Addins
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Addins;

end winword.VBE_Interface;

