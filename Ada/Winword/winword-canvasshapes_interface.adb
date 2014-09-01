with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CanvasShapes_Interface is

   procedure Initialize (This : in out CanvasShapes_Type) is
   begin
      Set_IID (This, IID_CanvasShapes);
   end Initialize;

   function Pointer (This : CanvasShapes_Type)
     return Pointer_To_CanvasShapes
   is
   begin
      return To_Pointer_To_CanvasShapes (Address (This));
   end Pointer;

   procedure Attach (This    : in out CanvasShapes_Type;
                     Pointer : in     Pointer_To_CanvasShapes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : CanvasShapes_Type)
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
     (This : CanvasShapes_Type)
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
     (This : CanvasShapes_Type)
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
     (This : CanvasShapes_Type)
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
     (This : CanvasShapes_Type)
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
     (This  : CanvasShapes_Type;
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
     (This   : CanvasShapes_Type;
      uType  : MsoCalloutType;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float)
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
          RetVal'Unchecked_Access));

      return RetVal;
   end AddCallout;

   function AddConnector
     (This   : CanvasShapes_Type;
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
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddCurve
         (Pointer (This),
          SafeArrayOfPoints,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddCurve;

   function AddLabel
     (This        : CanvasShapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float)
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
          RetVal'Unchecked_Access));

      return RetVal;
   end AddLabel;

   function AddLine
     (This   : CanvasShapes_Type;
      BeginX : Interfaces.C.C_float;
      BeginY : Interfaces.C.C_float;
      EndX   : Interfaces.C.C_float;
      EndY   : Interfaces.C.C_float)
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
          RetVal'Unchecked_Access));

      return RetVal;
   end AddLine;

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
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

      return RetVal;
   end AddPicture;

   function AddPolyline
     (This              : CanvasShapes_Type;
      SafeArrayOfPoints : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddPolyline
         (Pointer (This),
          SafeArrayOfPoints,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddPolyline;

   function AddShape
     (This   : CanvasShapes_Type;
      uType  : Interfaces.C.long;
      Left   : Interfaces.C.C_float;
      Top    : Interfaces.C.C_float;
      Width  : Interfaces.C.C_float;
      Height : Interfaces.C.C_float)
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
          RetVal'Unchecked_Access));

      return RetVal;
   end AddShape;

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
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Text);
               GNATCOM.Interface.Free (FontName);
      
      end if;

      return RetVal;
   end AddTextEffect;

   function AddTextbox
     (This        : CanvasShapes_Type;
      Orientation : MsoTextOrientation;
      Left        : Interfaces.C.C_float;
      Top         : Interfaces.C.C_float;
      Width       : Interfaces.C.C_float;
      Height      : Interfaces.C.C_float)
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
          RetVal'Unchecked_Access));

      return RetVal;
   end AddTextbox;

   function BuildFreeform
     (This        : CanvasShapes_Type;
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
     (This  : CanvasShapes_Type;
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
     (This : CanvasShapes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectAll
         (Pointer (This)));

   end SelectAll;

end winword.CanvasShapes_Interface;

