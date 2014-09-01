with GNATCOM.Dispinterface;

package winword.Shapes_Object is

   type Shapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Shapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddCallout
     (This   : Shapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddConnector
     (This   : Shapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      BeginX : GNATCOM.Types.VARIANT;
      BeginY : GNATCOM.Types.VARIANT;
      EndX   : GNATCOM.Types.VARIANT;
      EndY   : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddCurve
     (This              : Shapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Anchor            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddLabel
     (This        : Shapes_Type;
      Orientation : GNATCOM.Types.VARIANT;
      Left        : GNATCOM.Types.VARIANT;
      Top         : GNATCOM.Types.VARIANT;
      Width       : GNATCOM.Types.VARIANT;
      Height      : GNATCOM.Types.VARIANT;
      Anchor      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddLine
     (This   : Shapes_Type;
      BeginX : GNATCOM.Types.VARIANT;
      BeginY : GNATCOM.Types.VARIANT;
      EndX   : GNATCOM.Types.VARIANT;
      EndY   : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddPicture
     (This             : Shapes_Type;
      FileName         : GNATCOM.Types.VARIANT;
      LinkToFile       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveWithDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Left             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Top              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Anchor           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddPolyline
     (This              : Shapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Anchor            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddShape
     (This   : Shapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddTextEffect
     (This             : Shapes_Type;
      PresetTextEffect : GNATCOM.Types.VARIANT;
      Text             : GNATCOM.Types.VARIANT;
      FontName         : GNATCOM.Types.VARIANT;
      FontSize         : GNATCOM.Types.VARIANT;
      FontBold         : GNATCOM.Types.VARIANT;
      FontItalic       : GNATCOM.Types.VARIANT;
      Left             : GNATCOM.Types.VARIANT;
      Top              : GNATCOM.Types.VARIANT;
      Anchor           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddTextbox
     (This        : Shapes_Type;
      Orientation : GNATCOM.Types.VARIANT;
      Left        : GNATCOM.Types.VARIANT;
      Top         : GNATCOM.Types.VARIANT;
      Width       : GNATCOM.Types.VARIANT;
      Height      : GNATCOM.Types.VARIANT;
      Anchor      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function BuildFreeform
     (This        : Shapes_Type;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function uRange
     (This  : Shapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SelectAll
     (This : Shapes_Type);

   function AddOLEObject
     (This          : Shapes_Type;
      ClassType     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FileName      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LinkToFile    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayAsIcon : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconFileName  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconIndex     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconLabel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Left          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Top           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Anchor        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddOLEControl
     (This      : Shapes_Type;
      ClassType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Left      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Top       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Anchor    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddDiagram
     (This   : Shapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddCanvas
     (This   : Shapes_Type;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Shapes_Object;

