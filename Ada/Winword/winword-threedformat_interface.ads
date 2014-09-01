with GNATCOM.Dispinterface;

package winword.ThreeDFormat_Interface is

   type ThreeDFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ThreeDFormat_Type);

   function Pointer (This : ThreeDFormat_Type)
     return Pointer_To_ThreeDFormat;

   procedure Attach (This    : in out ThreeDFormat_Type;
                     Pointer : in     Pointer_To_ThreeDFormat);

   function Get_Application
     (This : ThreeDFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ThreeDFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Depth
     (This : ThreeDFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Depth
     (This : ThreeDFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_ExtrusionColor
     (This : ThreeDFormat_Type)
     return Pointer_To_ColorFormat;

   function Get_ExtrusionColorType
     (This : ThreeDFormat_Type)
     return MsoExtrusionColorType;

   procedure Put_ExtrusionColorType
     (This : ThreeDFormat_Type;
      prop : MsoExtrusionColorType);

   function Get_Perspective
     (This : ThreeDFormat_Type)
     return MsoTriState;

   procedure Put_Perspective
     (This : ThreeDFormat_Type;
      prop : MsoTriState);

   function Get_PresetExtrusionDirection
     (This : ThreeDFormat_Type)
     return MsoPresetExtrusionDirection;

   function Get_PresetLightingDirection
     (This : ThreeDFormat_Type)
     return MsoPresetLightingDirection;

   procedure Put_PresetLightingDirection
     (This : ThreeDFormat_Type;
      prop : MsoPresetLightingDirection);

   function Get_PresetLightingSoftness
     (This : ThreeDFormat_Type)
     return MsoPresetLightingSoftness;

   procedure Put_PresetLightingSoftness
     (This : ThreeDFormat_Type;
      prop : MsoPresetLightingSoftness);

   function Get_PresetMaterial
     (This : ThreeDFormat_Type)
     return MsoPresetMaterial;

   procedure Put_PresetMaterial
     (This : ThreeDFormat_Type;
      prop : MsoPresetMaterial);

   function Get_PresetThreeDFormat
     (This : ThreeDFormat_Type)
     return MsoPresetThreeDFormat;

   function Get_RotationX
     (This : ThreeDFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_RotationX
     (This : ThreeDFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_RotationY
     (This : ThreeDFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_RotationY
     (This : ThreeDFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Visible
     (This : ThreeDFormat_Type)
     return MsoTriState;

   procedure Put_Visible
     (This : ThreeDFormat_Type;
      prop : MsoTriState);

   procedure IncrementRotationX
     (This      : ThreeDFormat_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementRotationY
     (This      : ThreeDFormat_Type;
      Increment : Interfaces.C.C_float);

   procedure ResetRotation
     (This : ThreeDFormat_Type);

   procedure SetExtrusionDirection
     (This                     : ThreeDFormat_Type;
      PresetExtrusionDirection : MsoPresetExtrusionDirection);

   procedure SetThreeDFormat
     (This               : ThreeDFormat_Type;
      PresetThreeDFormat : MsoPresetThreeDFormat);

end winword.ThreeDFormat_Interface;

