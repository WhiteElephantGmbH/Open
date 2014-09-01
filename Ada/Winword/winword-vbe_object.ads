with GNATCOM.Dispinterface;

package winword.VBE_Object is

   type VBE_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Version
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBProjects
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CommandBars
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CodePanes
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Windows
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Events
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveVBProject
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   procedure PutRef_ActiveVBProject
     (This : VBE_Type;
      P1   : GNATCOM.Types.VARIANT);

   function Get_SelectedVBComponent
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MainWindow
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveWindow
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveCodePane
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

   procedure PutRef_ActiveCodePane
     (This : VBE_Type;
      P1   : GNATCOM.Types.VARIANT);

   function Get_Addins
     (This : VBE_Type)
     return GNATCOM.Types.VARIANT;

end winword.VBE_Object;

