package body winword.VBE_Object is

   function Get_Version
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_Version);
   end Get_Version;

   function Get_VBProjects
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_VBProjects);
   end Get_VBProjects;

   function Get_CommandBars
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_CommandBars);
   end Get_CommandBars;

   function Get_CodePanes
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_CodePanes);
   end Get_CodePanes;

   function Get_Windows
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_Windows);
   end Get_Windows;

   function Get_Events
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_Events);
   end Get_Events;

   function Get_ActiveVBProject
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_ActiveVBProject);
   end Get_ActiveVBProject;

   procedure PutRef_ActiveVBProject
     (This : VBE_Type;
      P1   : GNATCOM.Types.VARIANT)
   is
   begin
      PutRef
        (This,
         VBE_PutRef_ActiveVBProject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1));
   end PutRef_ActiveVBProject;

   function Get_SelectedVBComponent
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_SelectedVBComponent);
   end Get_SelectedVBComponent;

   function Get_MainWindow
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_MainWindow);
   end Get_MainWindow;

   function Get_ActiveWindow
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_ActiveWindow);
   end Get_ActiveWindow;

   function Get_ActiveCodePane
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_ActiveCodePane);
   end Get_ActiveCodePane;

   procedure PutRef_ActiveCodePane
     (This : VBE_Type;
      P1   : GNATCOM.Types.VARIANT)
   is
   begin
      PutRef
        (This,
         VBE_PutRef_ActiveCodePane,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1));
   end PutRef_ActiveCodePane;

   function Get_Addins
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, VBE_Get_Addins);
   end Get_Addins;

end winword.VBE_Object;

