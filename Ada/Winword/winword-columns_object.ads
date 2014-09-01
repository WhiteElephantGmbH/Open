with GNATCOM.Dispinterface;

package winword.Columns_Object is

   type Columns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_First
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Width
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Columns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This         : Columns_Type;
      BeforeColumn : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Columns_Type);

   procedure Delete
     (This : Columns_Type);

   procedure SetWidth
     (This        : Columns_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure AutoFit
     (This : Columns_Type);

   procedure DistributeWidth
     (This : Columns_Type);

   function Get_NestingLevel
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PreferredWidth
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidth
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidthType
     (This : Columns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidthType
     (This : Columns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Columns_Object;

