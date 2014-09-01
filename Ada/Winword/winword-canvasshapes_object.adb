package body winword.CanvasShapes_Object is

   function Get_Application
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CanvasShapes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CanvasShapes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CanvasShapes_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CanvasShapes_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : CanvasShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CanvasShapes_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : CanvasShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddCallout
     (This   : CanvasShapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddCallout,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width,
          3 => Top,
          4 => Left,
          5 => uType),
         Free);
   end AddCallout;

   function AddConnector
     (This   : CanvasShapes_Type;
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
         CanvasShapes_AddConnector,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EndY,
          2 => EndX,
          3 => BeginY,
          4 => BeginX,
          5 => uType),
         Free);
   end AddConnector;

   function AddCurve
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddCurve,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SafeArrayOfPoints),
         Free);
   end AddCurve;

   function AddLabel
     (This        : CanvasShapes_Type;
      Orientation : GNATCOM.Types.VARIANT;
      Left        : GNATCOM.Types.VARIANT;
      Top         : GNATCOM.Types.VARIANT;
      Width       : GNATCOM.Types.VARIANT;
      Height      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddLabel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width,
          3 => Top,
          4 => Left,
          5 => Orientation),
         Free);
   end AddLabel;

   function AddLine
     (This   : CanvasShapes_Type;
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
         CanvasShapes_AddLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EndY,
          2 => EndX,
          3 => BeginY,
          4 => BeginX),
         Free);
   end AddLine;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddPicture,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width,
          3 => Top,
          4 => Left,
          5 => SaveWithDocument,
          6 => LinkToFile,
          7 => FileName),
         Free);
   end AddPicture;

   function AddPolyline
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : GNATCOM.Types.VARIANT;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddPolyline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SafeArrayOfPoints),
         Free);
   end AddPolyline;

   function AddShape
     (This   : CanvasShapes_Type;
      uType  : GNATCOM.Types.VARIANT;
      Left   : GNATCOM.Types.VARIANT;
      Top    : GNATCOM.Types.VARIANT;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddShape,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width,
          3 => Top,
          4 => Left,
          5 => uType),
         Free);
   end AddShape;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddTextEffect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Top,
          2 => Left,
          3 => FontItalic,
          4 => FontBold,
          5 => FontSize,
          6 => FontName,
          7 => Text,
          8 => PresetTextEffect),
         Free);
   end AddTextEffect;

   function AddTextbox
     (This        : CanvasShapes_Type;
      Orientation : GNATCOM.Types.VARIANT;
      Left        : GNATCOM.Types.VARIANT;
      Top         : GNATCOM.Types.VARIANT;
      Width       : GNATCOM.Types.VARIANT;
      Height      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_AddTextbox,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width,
          3 => Top,
          4 => Left,
          5 => Orientation),
         Free);
   end AddTextbox;

   function BuildFreeform
     (This        : CanvasShapes_Type;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_BuildFreeform,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Y1,
          2 => X1,
          3 => EditingType),
         Free);
   end BuildFreeform;

   function uRange
     (This  : CanvasShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CanvasShapes_uRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end uRange;

   procedure SelectAll
     (This : CanvasShapes_Type)
   is
   begin
      Invoke (This, CanvasShapes_SelectAll);
   end SelectAll;

end winword.CanvasShapes_Object;

