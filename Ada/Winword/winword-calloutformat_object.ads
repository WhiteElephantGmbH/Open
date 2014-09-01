with GNATCOM.Dispinterface;

package winword.CalloutFormat_Object is

   type CalloutFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Accent
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Accent
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Angle
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Angle
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoAttach
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoAttach
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoLength
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Border
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Border
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Drop
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DropType
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Gap
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Gap
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Length
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure AutomaticLength
     (This : CalloutFormat_Type);

   procedure CustomDrop
     (This : CalloutFormat_Type;
      Drop : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure CustomLength
     (This   : CalloutFormat_Type;
      Length : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure PresetDrop
     (This     : CalloutFormat_Type;
      DropType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

end winword.CalloutFormat_Object;

