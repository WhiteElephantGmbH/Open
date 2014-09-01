package body winword.ThreeDFormat_Object is

   function Get_Application
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_Parent);
   end Get_Parent;

   function Get_Depth
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_Depth);
   end Get_Depth;

   procedure Put_Depth
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_Depth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Depth;

   function Get_ExtrusionColor
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_ExtrusionColor);
   end Get_ExtrusionColor;

   function Get_ExtrusionColorType
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_ExtrusionColorType);
   end Get_ExtrusionColorType;

   procedure Put_ExtrusionColorType
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_ExtrusionColorType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ExtrusionColorType;

   function Get_Perspective
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_Perspective);
   end Get_Perspective;

   procedure Put_Perspective
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_Perspective,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Perspective;

   function Get_PresetExtrusionDirection
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_PresetExtrusionDirection);
   end Get_PresetExtrusionDirection;

   function Get_PresetLightingDirection
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_PresetLightingDirection);
   end Get_PresetLightingDirection;

   procedure Put_PresetLightingDirection
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_PresetLightingDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PresetLightingDirection;

   function Get_PresetLightingSoftness
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_PresetLightingSoftness);
   end Get_PresetLightingSoftness;

   procedure Put_PresetLightingSoftness
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_PresetLightingSoftness,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PresetLightingSoftness;

   function Get_PresetMaterial
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_PresetMaterial);
   end Get_PresetMaterial;

   procedure Put_PresetMaterial
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_PresetMaterial,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PresetMaterial;

   function Get_PresetThreeDFormat
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_PresetThreeDFormat);
   end Get_PresetThreeDFormat;

   function Get_RotationX
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_RotationX);
   end Get_RotationX;

   procedure Put_RotationX
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_RotationX,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RotationX;

   function Get_RotationY
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_RotationY);
   end Get_RotationY;

   procedure Put_RotationY
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_RotationY,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RotationY;

   function Get_Visible
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ThreeDFormat_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ThreeDFormat_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   procedure IncrementRotationX
     (This      : ThreeDFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ThreeDFormat_IncrementRotationX,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementRotationX;

   procedure IncrementRotationY
     (This      : ThreeDFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ThreeDFormat_IncrementRotationY,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementRotationY;

   procedure ResetRotation
     (This : ThreeDFormat_Type)
   is
   begin
      Invoke (This, ThreeDFormat_ResetRotation);
   end ResetRotation;

   procedure SetExtrusionDirection
     (This                     : ThreeDFormat_Type;
      PresetExtrusionDirection : GNATCOM.Types.VARIANT;
      Free                     : Boolean := True)
   is
   begin
      Invoke
        (This,
         ThreeDFormat_SetExtrusionDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PresetExtrusionDirection),
         Free);
   end SetExtrusionDirection;

   procedure SetThreeDFormat
     (This               : ThreeDFormat_Type;
      PresetThreeDFormat : GNATCOM.Types.VARIANT;
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         ThreeDFormat_SetThreeDFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PresetThreeDFormat),
         Free);
   end SetThreeDFormat;

end winword.ThreeDFormat_Object;

