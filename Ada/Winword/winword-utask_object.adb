package body winword.uTask_Object is

   function Get_Application
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Name);
   end Get_Name;

   function Get_Left
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uTask_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Top
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uTask_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Width
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uTask_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Height
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uTask_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_WindowState
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_WindowState);
   end Get_WindowState;

   procedure Put_WindowState
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uTask_Put_WindowState,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WindowState;

   function Get_Visible
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uTask_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uTask_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   procedure Activate
     (This : uTask_Type;
      Wait : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uTask_Activate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wait),
         Free);
   end Activate;

   procedure Close
     (This : uTask_Type)
   is
   begin
      Invoke (This, uTask_Close);
   end Close;

   procedure Move
     (This : uTask_Type;
      Left : GNATCOM.Types.VARIANT;
      Top  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uTask_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Top,
          2 => Left),
         Free);
   end Move;

   procedure Resize
     (This   : uTask_Type;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uTask_Resize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width),
         Free);
   end Resize;

   procedure SendWindowMessage
     (This    : uTask_Type;
      Message : GNATCOM.Types.VARIANT;
      wParam  : GNATCOM.Types.VARIANT;
      lParam  : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uTask_SendWindowMessage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => lParam,
          2 => wParam,
          3 => Message),
         Free);
   end SendWindowMessage;

end winword.uTask_Object;

