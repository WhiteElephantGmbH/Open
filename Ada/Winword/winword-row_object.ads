with GNATCOM.Dispinterface;

package winword.Row_Object is

   type Row_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Range
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AllowBreakAcrossPages
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowBreakAcrossPages
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeadingFormat
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeadingFormat
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBetweenColumns
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBetweenColumns
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeightRule
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeightRule
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftIndent
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsLast
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsFirst
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Cells
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Row_Type);

   procedure Delete
     (This : Row_Type);

   procedure SetLeftIndent
     (This       : Row_Type;
      LeftIndent : GNATCOM.Types.VARIANT;
      RulerStyle : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure SetHeight
     (This       : Row_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function ConvertToTextOld
     (This      : Row_Type;
      Separator : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function ConvertToText
     (This         : Row_Type;
      Separator    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NestedTables : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_NestingLevel
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ID
     (This : Row_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ID
     (This : Row_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Row_Object;

