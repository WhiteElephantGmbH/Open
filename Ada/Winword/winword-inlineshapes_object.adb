package body winword.InlineShapes_Object is

   function Get_Application
     (This : InlineShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShapes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : InlineShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShapes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : InlineShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShapes_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : InlineShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShapes_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : InlineShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShapes_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : InlineShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddPicture
     (This             : InlineShapes_Type;
      FileName         : GNATCOM.Types.VARIANT;
      LinkToFile       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveWithDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_AddPicture,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => SaveWithDocument,
          3 => LinkToFile,
          4 => FileName),
         Free);
   end AddPicture;

   function AddOLEObject
     (This          : InlineShapes_Type;
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
      uRange        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_AddOLEObject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => IconLabel,
          3 => IconIndex,
          4 => IconFileName,
          5 => DisplayAsIcon,
          6 => LinkToFile,
          7 => FileName,
          8 => ClassType),
         Free);
   end AddOLEObject;

   function AddOLEControl
     (This      : InlineShapes_Type;
      ClassType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_AddOLEControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => ClassType),
         Free);
   end AddOLEControl;

   function uNew
     (This   : InlineShapes_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_uNew,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end uNew;

   function AddHorizontalLine
     (This     : InlineShapes_Type;
      FileName : GNATCOM.Types.VARIANT;
      uRange   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_AddHorizontalLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => FileName),
         Free);
   end AddHorizontalLine;

   function AddHorizontalLineStandard
     (This   : InlineShapes_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_AddHorizontalLineStandard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end AddHorizontalLineStandard;

   function AddPictureBullet
     (This     : InlineShapes_Type;
      FileName : GNATCOM.Types.VARIANT;
      uRange   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         InlineShapes_AddPictureBullet,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => FileName),
         Free);
   end AddPictureBullet;

end winword.InlineShapes_Object;

