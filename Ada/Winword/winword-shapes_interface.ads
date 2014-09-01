with GNATCOM.Dispinterface;

package winword.Shapes_Interface is

   type Shapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Shapes_Type);

   function Pointer (This : Shapes_Type)
     return Pointer_To_Shapes;

   procedure Attach (This    : in out Shapes_Type;
                     Pointer : in     Pointer_To_Shapes);

   function Get_Application
     (This : Shapes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Shapes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Shapes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Shapes_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : Shapes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : Shapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddCallout
     (This   : Shapes_Type;
      uType  : MsoCalloutType;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddConnector
     (This   : Shapes_Type;
      uType  : MsoConnectorType;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float)
     return Pointer_To_Shape;

   function AddCurve
     (This              : Shapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Anchor            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddLabel
     (This        : Shapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float;
      Anchor      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddLine
     (This   : Shapes_Type;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddPicture
     (This             : Shapes_Type;
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
      Anchor           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_Shape;

   function AddPolyline
     (This              : Shapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Anchor            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddShape
     (This   : Shapes_Type;
      uType  : Interfaces.C.long;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddTextEffect
     (This             : Shapes_Type;
      PresetTextEffect : MsoPresetTextEffect;
      Text             : GNATCOM.Types.BSTR;
      FontName         : GNATCOM.Types.BSTR;
      FontSize         : Interfaces.C.C_float;
      FontBold         : MsoTriState;
      FontItalic       : MsoTriState;
      Left             : Interfaces.C.C_float;
      Top              : Interfaces.C.C_float;
      Anchor           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_Shape;

   function AddTextbox
     (This        : Shapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float;
      Anchor      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function BuildFreeform
     (This        : Shapes_Type;
      EditingType : MsoEditingType;
      X1          : Interfaces.C.C_float;
      Y1          : Interfaces.C.C_float)
     return Pointer_To_FreeformBuilder;

   function uRange
     (This  : Shapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ShapeRange;

   procedure SelectAll
     (This : Shapes_Type);

   function AddOLEObject
     (This          : Shapes_Type;
      ClassType     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileName      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LinkToFile    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DisplayAsIcon : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconFileName  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconIndex     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconLabel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Left          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Top           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Anchor        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddOLEControl
     (This      : Shapes_Type;
      ClassType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Left      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Top       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Anchor    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddDiagram
     (This   : Shapes_Type;
      uType  : MsoDiagramType;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function AddCanvas
     (This   : Shapes_Type;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

end winword.Shapes_Interface;

