with GNATCOM.Dispinterface;

package winword.ConnectorFormat_Object is

   type ConnectorFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BeginConnected
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BeginConnectedShape
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BeginConnectionSite
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EndConnected
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EndConnectedShape
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EndConnectionSite
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : ConnectorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure BeginConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : GNATCOM.Types.VARIANT;
      ConnectionSite : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

   procedure BeginDisconnect
     (This : ConnectorFormat_Type);

   procedure EndConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : GNATCOM.Types.VARIANT;
      ConnectionSite : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

   procedure EndDisconnect
     (This : ConnectorFormat_Type);

end winword.ConnectorFormat_Object;

