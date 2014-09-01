package body winword.ShapeNodes_Object is

   function Get_Application
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNodes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNodes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNodes_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNodes_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNodes_Getu_NewEnum);
   end Getu_NewEnum;

   procedure Delete
     (This  : ShapeNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeNodes_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Delete;

   function Item
     (This  : ShapeNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ShapeNodes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure SetEditingType
     (This        : ShapeNodes_Type;
      Index       : GNATCOM.Types.VARIANT;
      EditingType : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeNodes_SetEditingType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EditingType,
          2 => Index),
         Free);
   end SetEditingType;

   procedure SetPosition
     (This  : ShapeNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      X1    : GNATCOM.Types.VARIANT;
      Y1    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeNodes_SetPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Y1,
          2 => X1,
          3 => Index),
         Free);
   end SetPosition;

   procedure SetSegmentType
     (This        : ShapeNodes_Type;
      Index       : GNATCOM.Types.VARIANT;
      SegmentType : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeNodes_SetSegmentType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SegmentType,
          2 => Index),
         Free);
   end SetSegmentType;

   procedure Insert
     (This        : ShapeNodes_Type;
      Index       : GNATCOM.Types.VARIANT;
      SegmentType : GNATCOM.Types.VARIANT;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      X2          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Y2          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      X3          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Y3          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeNodes_Insert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Y3,
          2 => X3,
          3 => Y2,
          4 => X2,
          5 => Y1,
          6 => X1,
          7 => EditingType,
          8 => SegmentType,
          9 => Index),
         Free);
   end Insert;

end winword.ShapeNodes_Object;

