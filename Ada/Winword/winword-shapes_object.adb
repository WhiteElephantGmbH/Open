package body winword.Shapes_Object is

   function Get_Application
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shapes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shapes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shapes_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shapes_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : Shapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shapes_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : Shapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddCallout,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => uType),
         Free);
   end AddCallout;

   function AddConnector
     (This   : Shapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      BeginX : GNATCOM.Types.VARIANT;
      BeginY : GNATCOM.Types.VARIANT;
      EndX   : GNATCOM.Types.VARIANT;
      EndY   : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddConnector,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EndY,
          2 => EndX,
          3 => BeginY,
          4 => BeginX,
          5 => uType),
         Free);
   end AddConnector;

   function AddCurve
     (This              : Shapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Anchor            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddCurve,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => SafeArrayOfPoints),
         Free);
   end AddCurve;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddLabel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => Orientation),
         Free);
   end AddLabel;

   function AddLine
     (This   : Shapes_Type;
      BeginX : GNATCOM.Types.VARIANT;
      BeginY : GNATCOM.Types.VARIANT;
      EndX   : GNATCOM.Types.VARIANT;
      EndY   : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => EndY,
          3 => EndX,
          4 => BeginY,
          5 => BeginX),
         Free);
   end AddLine;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddPicture,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => SaveWithDocument,
          7 => LinkToFile,
          8 => FileName),
         Free);
   end AddPicture;

   function AddPolyline
     (This              : Shapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Anchor            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddPolyline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => SafeArrayOfPoints),
         Free);
   end AddPolyline;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddShape,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => uType),
         Free);
   end AddShape;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddTextEffect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Top,
          3 => Left,
          4 => FontItalic,
          5 => FontBold,
          6 => FontSize,
          7 => FontName,
          8 => Text,
          9 => PresetTextEffect),
         Free);
   end AddTextEffect;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddTextbox,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => Orientation),
         Free);
   end AddTextbox;

   function BuildFreeform
     (This        : Shapes_Type;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_BuildFreeform,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Y1,
          2 => X1,
          3 => EditingType),
         Free);
   end BuildFreeform;

   function uRange
     (This  : Shapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_uRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end uRange;

   procedure SelectAll
     (This : Shapes_Type)
   is
   begin
      Invoke (This, Shapes_SelectAll);
   end SelectAll;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddOLEObject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => IconLabel,
          7 => IconIndex,
          8 => IconFileName,
          9 => DisplayAsIcon,
          10 => LinkToFile,
          11 => FileName,
          12 => ClassType),
         Free);
   end AddOLEObject;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddOLEControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => ClassType),
         Free);
   end AddOLEControl;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddDiagram,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left,
          6 => uType),
         Free);
   end AddDiagram;

   function AddCanvas
     (This   : Shapes_Type;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Shapes_AddCanvas,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor,
          2 => Height,
          3 => Width,
          4 => Top,
          5 => Left),
         Free);
   end AddCanvas;

end winword.Shapes_Object;

