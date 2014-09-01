with GNATCOM.Dispinterface;

package winword.uVBProject_Object is

   type uVBProject_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HelpFile
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HelpFile
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HelpContextID
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HelpContextID
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Description
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Description
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Mode
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_References
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VBE
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Collection
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Protection
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Saved
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBComponents
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure SaveAs
     (This     : uVBProject_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure MakeCompiledFile
     (This : uVBProject_Type);

   function Get_Type
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FileName
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuildFileName
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BuildFileName
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uVBProject_Object;

