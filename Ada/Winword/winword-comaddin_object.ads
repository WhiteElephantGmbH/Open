with GNATCOM.Dispinterface;

package winword.COMAddIn_Object is

   type COMAddIn_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Description
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Description
     (This : COMAddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ProgId
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Guid
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Connect
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Connect
     (This : COMAddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Object
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Object
     (This : COMAddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Parent
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT;

end winword.COMAddIn_Object;

