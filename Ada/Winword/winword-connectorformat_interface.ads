with GNATCOM.Dispinterface;

package winword.ConnectorFormat_Interface is

   type ConnectorFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ConnectorFormat_Type);

   function Pointer (This : ConnectorFormat_Type)
     return Pointer_To_ConnectorFormat;

   procedure Attach (This    : in out ConnectorFormat_Type;
                     Pointer : in     Pointer_To_ConnectorFormat);

   function Get_Application
     (This : ConnectorFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ConnectorFormat_Type)
     return Interfaces.C.long;

   function Get_BeginConnected
     (This : ConnectorFormat_Type)
     return MsoTriState;

   function Get_BeginConnectedShape
     (This : ConnectorFormat_Type)
     return Pointer_To_Shape;

   function Get_BeginConnectionSite
     (This : ConnectorFormat_Type)
     return Interfaces.C.long;

   function Get_EndConnected
     (This : ConnectorFormat_Type)
     return MsoTriState;

   function Get_EndConnectedShape
     (This : ConnectorFormat_Type)
     return Pointer_To_Shape;

   function Get_EndConnectionSite
     (This : ConnectorFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Type
     (This : ConnectorFormat_Type)
     return MsoConnectorType;

   procedure Put_Type
     (This : ConnectorFormat_Type;
      prop : MsoConnectorType);

   procedure BeginConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : Pointer_To_Pointer_To_Shape;
      ConnectionSite : Interfaces.C.long);

   procedure BeginDisconnect
     (This : ConnectorFormat_Type);

   procedure EndConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : Pointer_To_Pointer_To_Shape;
      ConnectionSite : Interfaces.C.long);

   procedure EndDisconnect
     (This : ConnectorFormat_Type);

end winword.ConnectorFormat_Interface;

