with GNATCOM.Dispinterface;

package winword.uVBProject_Interface is

   type uVBProject_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uVBProject_Type);

   function Pointer (This : uVBProject_Type)
     return Pointer_To_uVBProject;

   procedure Attach (This    : in out uVBProject_Type;
                     Pointer : in     Pointer_To_uVBProject);

   function Get_Application
     (This       : uVBProject_Type)
     return Pointer_To_Application;

   function Get_Parent
     (This       : uVBProject_Type)
     return Pointer_To_Application;

   function Get_HelpFile
     (This           : uVBProject_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_HelpFile
     (This           : uVBProject_Type;
      lpbstrHelpFile : GNATCOM.Types.BSTR;
      Free           : Boolean := True);

   function Get_HelpContextID
     (This          : uVBProject_Type)
     return Interfaces.C.long;

   procedure Put_HelpContextID
     (This          : uVBProject_Type;
      lpdwContextID : Interfaces.C.long);

   function Get_Description
     (This              : uVBProject_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Description
     (This              : uVBProject_Type;
      lpbstrDescription : GNATCOM.Types.BSTR;
      Free              : Boolean := True);

   function Get_Mode
     (This      : uVBProject_Type)
     return vbext_VBAMode;

   function Get_References
     (This          : uVBProject_Type)
     return Pointer_To_uReferences;

   function Get_Name
     (This       : uVBProject_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This       : uVBProject_Type;
      lpbstrName : GNATCOM.Types.BSTR;
      Free       : Boolean := True);

   function Get_VBE
     (This       : uVBProject_Type)
     return Pointer_To_VBE;

   function Get_Collection
     (This       : uVBProject_Type)
     return Pointer_To_uVBProjects;

   function Get_Protection
     (This         : uVBProject_Type)
     return vbext_ProjectProtection;

   function Get_Saved
     (This      : uVBProject_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_VBComponents
     (This       : uVBProject_Type)
     return Pointer_To_uVBComponents;

   procedure SaveAs
     (This     : uVBProject_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure MakeCompiledFile
     (This : uVBProject_Type);

   function Get_Type
     (This   : uVBProject_Type)
     return vbext_ProjectType;

   function Get_FileName
     (This         : uVBProject_Type)
     return GNATCOM.Types.BSTR;

   function Get_BuildFileName
     (This           : uVBProject_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_BuildFileName
     (This           : uVBProject_Type;
      lpbstrBldFName : GNATCOM.Types.BSTR;
      Free           : Boolean := True);

end winword.uVBProject_Interface;

