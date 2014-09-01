with GNATCOM.Dispinterface;

package winword.CanvasShapes_Interface is

   type CanvasShapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CanvasShapes_Type);

   function Pointer (This : CanvasShapes_Type)
     return Pointer_To_CanvasShapes;

   procedure Attach (This    : in out CanvasShapes_Type;
                     Pointer : in     Pointer_To_CanvasShapes);

   function Get_Application
     (This : CanvasShapes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CanvasShapes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CanvasShapes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : CanvasShapes_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : CanvasShapes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : CanvasShapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddCallout
     (This   : CanvasShapes_Type;
      uType  : MsoCalloutType;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function AddConnector
     (This   : CanvasShapes_Type;
      uType  : MsoConnectorType;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function AddCurve
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddLabel
     (This        : CanvasShapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function AddLine
     (This   : CanvasShapes_Type;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function AddPicture
     (This             : CanvasShapes_Type;
      FileName         : GNATCOM.Types.BSTR;
      LinkToFile       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveWithDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Left             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Top              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_Shape;

   function AddPolyline
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddShape
     (This   : CanvasShapes_Type;
      uType  : Interfaces.C.long;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function AddTextEffect
     (This             : CanvasShapes_Type;
      PresetTextEffect : MsoPresetTextEffect;
      Text             : GNATCOM.Types.BSTR;
      FontName         : GNATCOM.Types.BSTR;
      FontSize         : Interfaces.C.C_float;
      FontBold         : MsoTriState;
      FontItalic       : MsoTriState;
      Left             : Interfaces.C.C_float;
      Top              : Interfaces.C.C_float;
      Free             : Boolean := True)
     return Pointer_To_Shape;

   function AddTextbox
     (This        : CanvasShapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function BuildFreeform
     (This        : CanvasShapes_Type;
      EditingType : MsoEditingType;
      X1          : Interfaces.C.C_float;
      Y1          : Interfaces.C.C_float)
     return Pointer_To_FreeformBuilder;

   function uRange
     (This  : CanvasShapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ShapeRange;

   procedure SelectAll
     (This : CanvasShapes_Type);

end winword.CanvasShapes_Interface;

