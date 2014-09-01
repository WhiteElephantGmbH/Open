with GNATCOM.Dispinterface;

package winword.Balloon_Interface is

   type Balloon_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Balloon_Type);

   function Pointer (This : Balloon_Type)
     return Pointer_To_Balloon;

   procedure Attach (This    : in out Balloon_Type;
                     Pointer : in     Pointer_To_Balloon);

   function Get_Application
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : Balloon_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Checkboxes
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Labels
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Put_BalloonType
     (This : Balloon_Type;
      pbty : MsoBalloonType);

   function Get_BalloonType
     (This : Balloon_Type)
     return MsoBalloonType;

   procedure Put_Icon
     (This : Balloon_Type;
      picn : MsoIconType);

   function Get_Icon
     (This : Balloon_Type)
     return MsoIconType;

   procedure Put_Heading
     (This  : Balloon_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True);

   function Get_Heading
     (This  : Balloon_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This  : Balloon_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True);

   function Get_Text
     (This  : Balloon_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Mode
     (This : Balloon_Type;
      pmd  : MsoModeType);

   function Get_Mode
     (This : Balloon_Type)
     return MsoModeType;

   procedure Put_Animation
     (This : Balloon_Type;
      pfca : MsoAnimationType);

   function Get_Animation
     (This : Balloon_Type)
     return MsoAnimationType;

   procedure Put_Button
     (This : Balloon_Type;
      psbs : MsoButtonSetType);

   function Get_Button
     (This : Balloon_Type)
     return MsoButtonSetType;

   procedure Put_Callback
     (This  : Balloon_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True);

   function Get_Callback
     (This  : Balloon_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Private
     (This      : Balloon_Type;
      plPrivate : Interfaces.C.long);

   function Get_Private
     (This      : Balloon_Type)
     return Interfaces.C.long;

   procedure SetAvoidRectangle
     (This   : Balloon_Type;
      Left   : Interfaces.C.int;
      Top    : Interfaces.C.int;
      Right  : Interfaces.C.int;
      Bottom : Interfaces.C.int);

   function Get_Name
     (This      : Balloon_Type)
     return GNATCOM.Types.BSTR;

   function Show
     (This  : Balloon_Type)
     return MsoBalloonButtonType;

   procedure Close
     (This : Balloon_Type);

end winword.Balloon_Interface;

