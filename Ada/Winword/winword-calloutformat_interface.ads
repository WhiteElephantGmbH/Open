with GNATCOM.Dispinterface;

package winword.CalloutFormat_Interface is

   type CalloutFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CalloutFormat_Type);

   function Pointer (This : CalloutFormat_Type)
     return Pointer_To_CalloutFormat;

   procedure Attach (This    : in out CalloutFormat_Type;
                     Pointer : in     Pointer_To_CalloutFormat);

   function Get_Application
     (This : CalloutFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CalloutFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CalloutFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Accent
     (This : CalloutFormat_Type)
     return MsoTriState;

   procedure Put_Accent
     (This : CalloutFormat_Type;
      prop : MsoTriState);

   function Get_Angle
     (This : CalloutFormat_Type)
     return MsoCalloutAngleType;

   procedure Put_Angle
     (This : CalloutFormat_Type;
      prop : MsoCalloutAngleType);

   function Get_AutoAttach
     (This : CalloutFormat_Type)
     return MsoTriState;

   procedure Put_AutoAttach
     (This : CalloutFormat_Type;
      prop : MsoTriState);

   function Get_AutoLength
     (This : CalloutFormat_Type)
     return MsoTriState;

   function Get_Border
     (This : CalloutFormat_Type)
     return MsoTriState;

   procedure Put_Border
     (This : CalloutFormat_Type;
      prop : MsoTriState);

   function Get_Drop
     (This : CalloutFormat_Type)
     return Interfaces.C.C_float;

   function Get_DropType
     (This : CalloutFormat_Type)
     return MsoCalloutDropType;

   function Get_Gap
     (This : CalloutFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Gap
     (This : CalloutFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Length
     (This : CalloutFormat_Type)
     return Interfaces.C.C_float;

   function Get_Type
     (This : CalloutFormat_Type)
     return MsoCalloutType;

   procedure Put_Type
     (This : CalloutFormat_Type;
      prop : MsoCalloutType);

   procedure AutomaticLength
     (This : CalloutFormat_Type);

   procedure CustomDrop
     (This : CalloutFormat_Type;
      Drop : Interfaces.C.C_float);

   procedure CustomLength
     (This   : CalloutFormat_Type;
      Length : Interfaces.C.C_float);

   procedure PresetDrop
     (This     : CalloutFormat_Type;
      DropType : MsoCalloutDropType);

end winword.CalloutFormat_Interface;

