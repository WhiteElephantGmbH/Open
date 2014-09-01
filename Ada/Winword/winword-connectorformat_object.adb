package body winword.ConnectorFormat_Object is

   function Get_Application
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_Creator);
   end Get_Creator;

   function Get_BeginConnected
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_BeginConnected);
   end Get_BeginConnected;

   function Get_BeginConnectedShape
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_BeginConnectedShape);
   end Get_BeginConnectedShape;

   function Get_BeginConnectionSite
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_BeginConnectionSite);
   end Get_BeginConnectionSite;

   function Get_EndConnected
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_EndConnected);
   end Get_EndConnected;

   function Get_EndConnectedShape
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_EndConnectedShape);
   end Get_EndConnectedShape;

   function Get_EndConnectionSite
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_EndConnectionSite);
   end Get_EndConnectionSite;

   function Get_Parent
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_Parent);
   end Get_Parent;

   function Get_Type
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ConnectorFormat_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : ConnectorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ConnectorFormat_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   procedure BeginConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : GNATCOM.Types.VARIANT;
      ConnectionSite : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         ConnectorFormat_BeginConnect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ConnectionSite,
          2 => ConnectedShape),
         Free);
   end BeginConnect;

   procedure BeginDisconnect
     (This : ConnectorFormat_Type)
   is
   begin
      Invoke (This, ConnectorFormat_BeginDisconnect);
   end BeginDisconnect;

   procedure EndConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : GNATCOM.Types.VARIANT;
      ConnectionSite : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         ConnectorFormat_EndConnect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ConnectionSite,
          2 => ConnectedShape),
         Free);
   end EndConnect;

   procedure EndDisconnect
     (This : ConnectorFormat_Type)
   is
   begin
      Invoke (This, ConnectorFormat_EndDisconnect);
   end EndDisconnect;

end winword.ConnectorFormat_Object;

