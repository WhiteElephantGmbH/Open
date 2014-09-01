with GNATCOM.Dispinterface;

package winword.ShapeNodes_Object is

   type ShapeNodes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : ShapeNodes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This  : ShapeNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Item
     (This  : ShapeNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SetEditingType
     (This        : ShapeNodes_Type;
      Index       : GNATCOM.Types.VARIANT;
      EditingType : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure SetPosition
     (This  : ShapeNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      X1    : GNATCOM.Types.VARIANT;
      Y1    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure SetSegmentType
     (This        : ShapeNodes_Type;
      Index       : GNATCOM.Types.VARIANT;
      SegmentType : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

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
      Free        : Boolean := True);

end winword.ShapeNodes_Object;

