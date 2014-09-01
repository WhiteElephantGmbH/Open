with GNATCOM.Dispinterface;

package winword.CanvasShapes_Object is

   type CanvasShapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : CanvasShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddCallout
     (This   : CanvasShapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddConnector
     (This   : CanvasShapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      BeginX : GNATCOM.Types.VARIANT;
      BeginY : GNATCOM.Types.VARIANT;
      EndX   : GNATCOM.Types.VARIANT;
      EndY   : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddCurve
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddLabel
     (This        : CanvasShapes_Type;
      Orientation : GNATCOM.Types.VARIANT;
      Left        : GNATCOM.Types.VARIANT;
      Top         : GNATCOM.Types.VARIANT;
      Width       : GNATCOM.Types.VARIANT;
      Height      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddLine
     (This   : CanvasShapes_Type;
      BeginX : GNATCOM.Types.VARIANT;
      BeginY : GNATCOM.Types.VARIANT;
      EndX   : GNATCOM.Types.VARIANT;
      EndY   : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddPicture
     (This             : CanvasShapes_Type;
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
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddPolyline
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddShape
     (This   : CanvasShapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddTextEffect
     (This             : CanvasShapes_Type;
      PresetTextEffect : GNATCOM.Types.VARIANT;
      Text             : GNATCOM.Types.VARIANT;
      FontName         : GNATCOM.Types.VARIANT;
      FontSize         : GNATCOM.Types.VARIANT;
      FontBold         : GNATCOM.Types.VARIANT;
      FontItalic       : GNATCOM.Types.VARIANT;
      Left             : GNATCOM.Types.VARIANT;
      Top              : GNATCOM.Types.VARIANT;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddTextbox
     (This        : CanvasShapes_Type;
      Orientation : GNATCOM.Types.VARIANT;
      Left        : GNATCOM.Types.VARIANT;
      Top         : GNATCOM.Types.VARIANT;
      Width       : GNATCOM.Types.VARIANT;
      Height      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function BuildFreeform
     (This        : CanvasShapes_Type;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function uRange
     (This  : CanvasShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SelectAll
     (This : CanvasShapes_Type);

end winword.CanvasShapes_Object;

