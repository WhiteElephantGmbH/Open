with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Shapes_Interface is

   procedure Initialize (This : in out Shapes_Type) is
   begin
      Set_IID (This, IID_Shapes);
   end Initialize;

   function Pointer (This : Shapes_Type)
     return Pointer_To_Shapes
   is
   begin
      return To_Pointer_To_Shapes (Address (This));
   end Pointer;

   procedure Attach (This    : in out Shapes_Type;
                     Pointer : in     Pointer_To_Shapes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Shapes_Type)
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
     (This : Shapes_Type)
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
     (This : Shapes_Type)
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

   function Get_Count
     (This : Shapes_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Getu_NewEnum
     (This : Shapes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Item
     (This  : Shapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function AddCallout
     (This   : Shapes_Type;
      uType  : MsoCalloutType;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddCallout
         (Pointer (This),
          uType,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddCallout;

   function AddConnector
     (This   : Shapes_Type;
      uType  : MsoConnectorType;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddConnector
         (Pointer (This),
          uType,
          BeginX,
          BeginY,
          EndX,
          EndY,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddConnector;

   function AddCurve
     (This              : Shapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Anchor            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddCurve
         (Pointer (This),
          SafeArrayOfPoints,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddCurve;

   function AddLabel
     (This        : Shapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float;
      Anchor      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddLabel
         (Pointer (This),
          Orientation,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddLabel;

   function AddLine
     (This   : Shapes_Type;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddLine
         (Pointer (This),
          BeginX,
          BeginY,
          EndX,
          EndY,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddLine;

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
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddPicture
         (Pointer (This),
          FileName,
          LinkToFile,
          SaveWithDocument,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

      return RetVal;
   end AddPicture;

   function AddPolyline
     (This              : Shapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Anchor            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddPolyline
         (Pointer (This),
          SafeArrayOfPoints,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddPolyline;

   function AddShape
     (This   : Shapes_Type;
      uType  : Interfaces.C.long;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddShape
         (Pointer (This),
          uType,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddShape;

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
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddTextEffect
         (Pointer (This),
          PresetTextEffect,
          Text,
          FontName,
          FontSize,
          FontBold,
          FontItalic,
          Left,
          Top,
          Anchor,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Text);
               GNATCOM.Interface.Free (FontName);
      
      end if;

      return RetVal;
   end AddTextEffect;

   function AddTextbox
     (This        : Shapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float;
      Anchor      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddTextbox
         (Pointer (This),
          Orientation,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddTextbox;

   function BuildFreeform
     (This        : Shapes_Type;
      EditingType : MsoEditingType;
      X1          : Interfaces.C.C_float;
      Y1          : Interfaces.C.C_float)
     return Pointer_To_FreeformBuilder
   is
       RetVal : aliased Pointer_To_FreeformBuilder;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BuildFreeform
         (Pointer (This),
          EditingType,
          X1,
          Y1,
          RetVal'Unchecked_Access));

      return RetVal;
   end BuildFreeform;

   function uRange
     (This  : Shapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ShapeRange
   is
       RetVal : aliased Pointer_To_ShapeRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uRange
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end uRange;

   procedure SelectAll
     (This : Shapes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectAll
         (Pointer (This)));

   end SelectAll;

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
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOLEObject
         (Pointer (This),
          ClassType,
          FileName,
          LinkToFile,
          DisplayAsIcon,
          IconFileName,
          IconIndex,
          IconLabel,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddOLEObject;

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
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOLEControl
         (Pointer (This),
          ClassType,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddOLEControl;

   function AddDiagram
     (This   : Shapes_Type;
      uType  : MsoDiagramType;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddDiagram
         (Pointer (This),
          uType,
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddDiagram;

   function AddCanvas
     (This   : Shapes_Type;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddCanvas
         (Pointer (This),
          Left,
          Top,
          Width,
          Height,
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddCanvas;

end winword.Shapes_Interface;

