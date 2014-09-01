with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CalloutFormat_Interface is

   procedure Initialize (This : in out CalloutFormat_Type) is
   begin
      Set_IID (This, IID_CalloutFormat);
   end Initialize;

   function Pointer (This : CalloutFormat_Type)
     return Pointer_To_CalloutFormat
   is
   begin
      return To_Pointer_To_CalloutFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out CalloutFormat_Type;
                     Pointer : in     Pointer_To_CalloutFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : CalloutFormat_Type)
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
     (This : CalloutFormat_Type)
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
     (This : CalloutFormat_Type)
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

   function Get_Accent
     (This : CalloutFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Accent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Accent;

   procedure Put_Accent
     (This : CalloutFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Accent
         (Pointer (This),
          prop));

   end Put_Accent;

   function Get_Angle
     (This : CalloutFormat_Type)
     return MsoCalloutAngleType
   is
       RetVal : aliased MsoCalloutAngleType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Angle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Angle;

   procedure Put_Angle
     (This : CalloutFormat_Type;
      prop : MsoCalloutAngleType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Angle
         (Pointer (This),
          prop));

   end Put_Angle;

   function Get_AutoAttach
     (This : CalloutFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoAttach
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoAttach;

   procedure Put_AutoAttach
     (This : CalloutFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoAttach
         (Pointer (This),
          prop));

   end Put_AutoAttach;

   function Get_AutoLength
     (This : CalloutFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoLength
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoLength;

   function Get_Border
     (This : CalloutFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Border
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Border;

   procedure Put_Border
     (This : CalloutFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Border
         (Pointer (This),
          prop));

   end Put_Border;

   function Get_Drop
     (This : CalloutFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Drop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Drop;

   function Get_DropType
     (This : CalloutFormat_Type)
     return MsoCalloutDropType
   is
       RetVal : aliased MsoCalloutDropType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DropType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DropType;

   function Get_Gap
     (This : CalloutFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Gap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Gap;

   procedure Put_Gap
     (This : CalloutFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Gap
         (Pointer (This),
          prop));

   end Put_Gap;

   function Get_Length
     (This : CalloutFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Length
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Length;

   function Get_Type
     (This : CalloutFormat_Type)
     return MsoCalloutType
   is
       RetVal : aliased MsoCalloutType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : CalloutFormat_Type;
      prop : MsoCalloutType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   procedure AutomaticLength
     (This : CalloutFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutomaticLength
         (Pointer (This)));

   end AutomaticLength;

   procedure CustomDrop
     (This : CalloutFormat_Type;
      Drop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CustomDrop
         (Pointer (This),
          Drop));

   end CustomDrop;

   procedure CustomLength
     (This   : CalloutFormat_Type;
      Length : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CustomLength
         (Pointer (This),
          Length));

   end CustomLength;

   procedure PresetDrop
     (This     : CalloutFormat_Type;
      DropType : MsoCalloutDropType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PresetDrop
         (Pointer (This),
          DropType));

   end PresetDrop;

end winword.CalloutFormat_Interface;

