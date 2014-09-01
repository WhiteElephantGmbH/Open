with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Balloon_Interface is

   procedure Initialize (This : in out Balloon_Type) is
   begin
      Set_IID (This, IID_Balloon);
   end Initialize;

   function Pointer (This : Balloon_Type)
     return Pointer_To_Balloon
   is
   begin
      return To_Pointer_To_Balloon (Address (This));
   end Pointer;

   procedure Attach (This    : in out Balloon_Type;
                     Pointer : in     Pointer_To_Balloon)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : Balloon_Type)
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

   function Get_Parent
     (This    : Balloon_Type)
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

   function Get_Checkboxes
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Checkboxes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Checkboxes;

   function Get_Labels
     (This    : Balloon_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Labels
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Labels;

   procedure Put_BalloonType
     (This : Balloon_Type;
      pbty : MsoBalloonType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BalloonType
         (Pointer (This),
          pbty));

   end Put_BalloonType;

   function Get_BalloonType
     (This : Balloon_Type)
     return MsoBalloonType
   is
       RetVal : aliased MsoBalloonType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BalloonType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BalloonType;

   procedure Put_Icon
     (This : Balloon_Type;
      picn : MsoIconType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Icon
         (Pointer (This),
          picn));

   end Put_Icon;

   function Get_Icon
     (This : Balloon_Type)
     return MsoIconType
   is
       RetVal : aliased MsoIconType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Icon
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Icon;

   procedure Put_Heading
     (This  : Balloon_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Heading
         (Pointer (This),
          pbstr));

      if Free then
               GNATCOM.Interface.Free (pbstr);
      
      end if;

   end Put_Heading;

   function Get_Heading
     (This  : Balloon_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Heading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Heading;

   procedure Put_Text
     (This  : Balloon_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Text
         (Pointer (This),
          pbstr));

      if Free then
               GNATCOM.Interface.Free (pbstr);
      
      end if;

   end Put_Text;

   function Get_Text
     (This  : Balloon_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Text
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Text;

   procedure Put_Mode
     (This : Balloon_Type;
      pmd  : MsoModeType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Mode
         (Pointer (This),
          pmd));

   end Put_Mode;

   function Get_Mode
     (This : Balloon_Type)
     return MsoModeType
   is
       RetVal : aliased MsoModeType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Mode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Mode;

   procedure Put_Animation
     (This : Balloon_Type;
      pfca : MsoAnimationType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Animation
         (Pointer (This),
          pfca));

   end Put_Animation;

   function Get_Animation
     (This : Balloon_Type)
     return MsoAnimationType
   is
       RetVal : aliased MsoAnimationType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Animation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Animation;

   procedure Put_Button
     (This : Balloon_Type;
      psbs : MsoButtonSetType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Button
         (Pointer (This),
          psbs));

   end Put_Button;

   function Get_Button
     (This : Balloon_Type)
     return MsoButtonSetType
   is
       RetVal : aliased MsoButtonSetType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Button
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Button;

   procedure Put_Callback
     (This  : Balloon_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Callback
         (Pointer (This),
          pbstr));

      if Free then
               GNATCOM.Interface.Free (pbstr);
      
      end if;

   end Put_Callback;

   function Get_Callback
     (This  : Balloon_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Callback
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Callback;

   procedure Put_Private
     (This      : Balloon_Type;
      plPrivate : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Private
         (Pointer (This),
          plPrivate));

   end Put_Private;

   function Get_Private
     (This      : Balloon_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Private
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Private;

   procedure SetAvoidRectangle
     (This   : Balloon_Type;
      Left   : Interfaces.C.int;
      Top    : Interfaces.C.int;
      Right  : Interfaces.C.int;
      Bottom : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAvoidRectangle
         (Pointer (This),
          Left,
          Top,
          Right,
          Bottom));

   end SetAvoidRectangle;

   function Get_Name
     (This      : Balloon_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Show
     (This  : Balloon_Type)
     return MsoBalloonButtonType
   is
       RetVal : aliased MsoBalloonButtonType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Show
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Show;

   procedure Close
     (This : Balloon_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This)));

   end Close;

end winword.Balloon_Interface;

