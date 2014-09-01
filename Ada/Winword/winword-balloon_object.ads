with GNATCOM.Dispinterface;

package winword.Balloon_Object is

   type Balloon_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Checkboxes
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Labels
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BalloonType
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BalloonType
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Icon
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Icon
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Heading
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Heading
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Text
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Mode
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Mode
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Animation
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Animation
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Button
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Button
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Callback
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Callback
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Private
     (This : Balloon_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Private
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure SetAvoidRectangle
     (This   : Balloon_Type;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Right  : GNATCOM.Types.VARIANT;
      Bottom : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function Get_Name
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   function Show
     (This : Balloon_Type)
     return GNATCOM.Types.VARIANT;

   procedure Close
     (This : Balloon_Type);

end winword.Balloon_Object;

