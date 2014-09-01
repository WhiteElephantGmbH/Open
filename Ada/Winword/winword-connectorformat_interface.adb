with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ConnectorFormat_Interface is

   procedure Initialize (This : in out ConnectorFormat_Type) is
   begin
      Set_IID (This, IID_ConnectorFormat);
   end Initialize;

   function Pointer (This : ConnectorFormat_Type)
     return Pointer_To_ConnectorFormat
   is
   begin
      return To_Pointer_To_ConnectorFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out ConnectorFormat_Type;
                     Pointer : in     Pointer_To_ConnectorFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ConnectorFormat_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : ConnectorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_BeginConnected
     (This : ConnectorFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginConnected
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginConnected;

   function Get_BeginConnectedShape
     (This : ConnectorFormat_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginConnectedShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginConnectedShape;

   function Get_BeginConnectionSite
     (This : ConnectorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginConnectionSite
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginConnectionSite;

   function Get_EndConnected
     (This : ConnectorFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndConnected
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndConnected;

   function Get_EndConnectedShape
     (This : ConnectorFormat_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndConnectedShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndConnectedShape;

   function Get_EndConnectionSite
     (This : ConnectorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndConnectionSite
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndConnectionSite;

   function Get_Parent
     (This : ConnectorFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Type
     (This : ConnectorFormat_Type)
     return MsoConnectorType
   is
       RetVal : aliased MsoConnectorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : ConnectorFormat_Type;
      prop : MsoConnectorType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   procedure BeginConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : Pointer_To_Pointer_To_Shape;
      ConnectionSite : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BeginConnect
         (Pointer (This),
          ConnectedShape,
          ConnectionSite));

   end BeginConnect;

   procedure BeginDisconnect
     (This : ConnectorFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BeginDisconnect
         (Pointer (This)));

   end BeginDisconnect;

   procedure EndConnect
     (This           : ConnectorFormat_Type;
      ConnectedShape : Pointer_To_Pointer_To_Shape;
      ConnectionSite : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EndConnect
         (Pointer (This),
          ConnectedShape,
          ConnectionSite));

   end EndConnect;

   procedure EndDisconnect
     (This : ConnectorFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EndDisconnect
         (Pointer (This)));

   end EndDisconnect;

end winword.ConnectorFormat_Interface;

