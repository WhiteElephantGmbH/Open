package body winword.Balloon_Object is

   function Get_Application
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Parent);
   end Get_Parent;

   function Get_Checkboxes
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Checkboxes);
   end Get_Checkboxes;

   function Get_Labels
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Labels);
   end Get_Labels;

   procedure Put_BalloonType
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_BalloonType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BalloonType;

   function Get_BalloonType
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_BalloonType);
   end Get_BalloonType;

   procedure Put_Icon
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Icon,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Icon;

   function Get_Icon
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Icon);
   end Get_Icon;

   procedure Put_Heading
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Heading,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Heading;

   function Get_Heading
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Heading);
   end Get_Heading;

   procedure Put_Text
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_Text
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Text);
   end Get_Text;

   procedure Put_Mode
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Mode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Mode;

   function Get_Mode
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Mode);
   end Get_Mode;

   procedure Put_Animation
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Animation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Animation;

   function Get_Animation
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Animation);
   end Get_Animation;

   procedure Put_Button
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Button,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Button;

   function Get_Button
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Button);
   end Get_Button;

   procedure Put_Callback
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Callback,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Callback;

   function Get_Callback
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Callback);
   end Get_Callback;

   procedure Put_Private
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Balloon_Put_Private,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Private;

   function Get_Private
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Private);
   end Get_Private;

   procedure SetAvoidRectangle
     (This   : Balloon_Type;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Right  : GNATCOM.Types.VARIANT;
      Bottom : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         Balloon_SetAvoidRectangle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Bottom,
          2 => Right,
          3 => Top,
          4 => Left),
         Free);
   end SetAvoidRectangle;

   function Get_Name
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Balloon_Get_Name);
   end Get_Name;

   function Show
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Balloon_Show);
   end Show;

   procedure Close
     (This : Balloon_Type)
   is
   begin
      Invoke (This, Balloon_Close);
   end Close;

end winword.Balloon_Object;

