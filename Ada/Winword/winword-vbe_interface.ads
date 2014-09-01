with GNATCOM.Dispinterface;

package winword.VBE_Interface is

   type VBE_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out VBE_Type);

   function Pointer (This : VBE_Type)
     return Pointer_To_VBE;

   procedure Attach (This    : in out VBE_Type;
                     Pointer : in     Pointer_To_VBE);

   function Get_Version
     (This         : VBE_Type)
     return GNATCOM.Types.BSTR;

   function Get_VBProjects
     (This        : VBE_Type)
     return Pointer_To_uVBProjects;

   function Get_CommandBars
     (This  : VBE_Type)
     return Pointer_To_uCommandBars;

   function Get_CodePanes
     (This        : VBE_Type)
     return Pointer_To_uCodePanes;

   function Get_Windows
     (This           : VBE_Type)
     return Pointer_To_uWindows;

   function Get_Events
     (This        : VBE_Type)
     return Pointer_To_Events;

   function Get_ActiveVBProject
     (This        : VBE_Type)
     return Pointer_To_uVBProject;

   procedure PutRef_ActiveVBProject
     (This        : VBE_Type;
      lppptReturn : Pointer_To_uVBProject);

   function Get_SelectedVBComponent
     (This        : VBE_Type)
     return Pointer_To_uVBComponent;

   function Get_MainWindow
     (This  : VBE_Type)
     return Pointer_To_Window;

   function Get_ActiveWindow
     (This        : VBE_Type)
     return Pointer_To_Window;

   function Get_ActiveCodePane
     (This       : VBE_Type)
     return Pointer_To_uCodePane;

   procedure PutRef_ActiveCodePane
     (This       : VBE_Type;
      ppCodePane : Pointer_To_uCodePane);

   function Get_Addins
     (This       : VBE_Type)
     return Pointer_To_uAddIns;

end winword.VBE_Interface;

