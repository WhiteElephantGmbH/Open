with GNATCOM.Dispinterface;

package winword.ThreeDFormat_Object is

   type ThreeDFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Depth
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Depth
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ExtrusionColor
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ExtrusionColorType
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ExtrusionColorType
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Perspective
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Perspective
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PresetExtrusionDirection
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PresetLightingDirection
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PresetLightingDirection
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PresetLightingSoftness
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PresetLightingSoftness
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PresetMaterial
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PresetMaterial
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PresetThreeDFormat
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RotationX
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RotationX
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RotationY
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RotationY
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Visible
     (This : ThreeDFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : ThreeDFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure IncrementRotationX
     (This      : ThreeDFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementRotationY
     (This      : ThreeDFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure ResetRotation
     (This : ThreeDFormat_Type);

   procedure SetExtrusionDirection
     (This                     : ThreeDFormat_Type;
      PresetExtrusionDirection : GNATCOM.Types.VARIANT;
      Free                     : Boolean := True);

   procedure SetThreeDFormat
     (This               : ThreeDFormat_Type;
      PresetThreeDFormat : GNATCOM.Types.VARIANT;
      Free               : Boolean := True);

end winword.ThreeDFormat_Object;

