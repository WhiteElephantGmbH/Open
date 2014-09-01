package body winword.COMAddIn_Object is

   function Get_Application
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Creator);
   end Get_Creator;

   function Get_Description
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Description);
   end Get_Description;

   procedure Put_Description
     (This : COMAddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         COMAddIn_Put_Description,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Description;

   function Get_ProgId
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_ProgId);
   end Get_ProgId;

   function Get_Guid
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Guid);
   end Get_Guid;

   function Get_Connect
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Connect);
   end Get_Connect;

   procedure Put_Connect
     (This : COMAddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         COMAddIn_Put_Connect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Connect;

   function Get_Object
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Object);
   end Get_Object;

   procedure Put_Object
     (This : COMAddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         COMAddIn_Put_Object,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Object;

   function Get_Parent
     (This : COMAddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIn_Get_Parent);
   end Get_Parent;

end winword.COMAddIn_Object;

