with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ThreeDFormat_Interface is

   procedure Initialize (This : in out ThreeDFormat_Type) is
   begin
      Set_IID (This, IID_ThreeDFormat);
   end Initialize;

   function Pointer (This : ThreeDFormat_Type)
     return Pointer_To_ThreeDFormat
   is
   begin
      return To_Pointer_To_ThreeDFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out ThreeDFormat_Type;
                     Pointer : in     Pointer_To_ThreeDFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ThreeDFormat_Type)
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
     (This : ThreeDFormat_Type)
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
     (This : ThreeDFormat_Type)
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

   function Get_Depth
     (This : ThreeDFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Depth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Depth;

   procedure Put_Depth
     (This : ThreeDFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Depth
         (Pointer (This),
          prop));

   end Put_Depth;

   function Get_ExtrusionColor
     (This : ThreeDFormat_Type)
     return Pointer_To_ColorFormat
   is
       RetVal : aliased Pointer_To_ColorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ExtrusionColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ExtrusionColor;

   function Get_ExtrusionColorType
     (This : ThreeDFormat_Type)
     return MsoExtrusionColorType
   is
       RetVal : aliased MsoExtrusionColorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ExtrusionColorType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ExtrusionColorType;

   procedure Put_ExtrusionColorType
     (This : ThreeDFormat_Type;
      prop : MsoExtrusionColorType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ExtrusionColorType
         (Pointer (This),
          prop));

   end Put_ExtrusionColorType;

   function Get_Perspective
     (This : ThreeDFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Perspective
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Perspective;

   procedure Put_Perspective
     (This : ThreeDFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Perspective
         (Pointer (This),
          prop));

   end Put_Perspective;

   function Get_PresetExtrusionDirection
     (This : ThreeDFormat_Type)
     return MsoPresetExtrusionDirection
   is
       RetVal : aliased MsoPresetExtrusionDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetExtrusionDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetExtrusionDirection;

   function Get_PresetLightingDirection
     (This : ThreeDFormat_Type)
     return MsoPresetLightingDirection
   is
       RetVal : aliased MsoPresetLightingDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetLightingDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetLightingDirection;

   procedure Put_PresetLightingDirection
     (This : ThreeDFormat_Type;
      prop : MsoPresetLightingDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PresetLightingDirection
         (Pointer (This),
          prop));

   end Put_PresetLightingDirection;

   function Get_PresetLightingSoftness
     (This : ThreeDFormat_Type)
     return MsoPresetLightingSoftness
   is
       RetVal : aliased MsoPresetLightingSoftness;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetLightingSoftness
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetLightingSoftness;

   procedure Put_PresetLightingSoftness
     (This : ThreeDFormat_Type;
      prop : MsoPresetLightingSoftness)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PresetLightingSoftness
         (Pointer (This),
          prop));

   end Put_PresetLightingSoftness;

   function Get_PresetMaterial
     (This : ThreeDFormat_Type)
     return MsoPresetMaterial
   is
       RetVal : aliased MsoPresetMaterial;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetMaterial
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetMaterial;

   procedure Put_PresetMaterial
     (This : ThreeDFormat_Type;
      prop : MsoPresetMaterial)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PresetMaterial
         (Pointer (This),
          prop));

   end Put_PresetMaterial;

   function Get_PresetThreeDFormat
     (This : ThreeDFormat_Type)
     return MsoPresetThreeDFormat
   is
       RetVal : aliased MsoPresetThreeDFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetThreeDFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetThreeDFormat;

   function Get_RotationX
     (This : ThreeDFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RotationX
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RotationX;

   procedure Put_RotationX
     (This : ThreeDFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RotationX
         (Pointer (This),
          prop));

   end Put_RotationX;

   function Get_RotationY
     (This : ThreeDFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RotationY
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RotationY;

   procedure Put_RotationY
     (This : ThreeDFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RotationY
         (Pointer (This),
          prop));

   end Put_RotationY;

   function Get_Visible
     (This : ThreeDFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : ThreeDFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   procedure IncrementRotationX
     (This      : ThreeDFormat_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementRotationX
         (Pointer (This),
          Increment));

   end IncrementRotationX;

   procedure IncrementRotationY
     (This      : ThreeDFormat_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementRotationY
         (Pointer (This),
          Increment));

   end IncrementRotationY;

   procedure ResetRotation
     (This : ThreeDFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetRotation
         (Pointer (This)));

   end ResetRotation;

   procedure SetExtrusionDirection
     (This                     : ThreeDFormat_Type;
      PresetExtrusionDirection : MsoPresetExtrusionDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetExtrusionDirection
         (Pointer (This),
          PresetExtrusionDirection));

   end SetExtrusionDirection;

   procedure SetThreeDFormat
     (This               : ThreeDFormat_Type;
      PresetThreeDFormat : MsoPresetThreeDFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetThreeDFormat
         (Pointer (This),
          PresetThreeDFormat));

   end SetThreeDFormat;

end winword.ThreeDFormat_Interface;

