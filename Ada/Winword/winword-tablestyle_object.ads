with GNATCOM.Dispinterface;

package winword.TableStyle_Object is

   type TableStyle_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AllowPageBreaks
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowPageBreaks
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BottomPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BottomPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightPadding
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightPadding
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Spacing
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Spacing
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Condition
     (This          : TableStyle_Type;
      ConditionCode : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_TableDirection
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TableDirection
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowBreakAcrossPage
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowBreakAcrossPage
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftIndent
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RowStripe
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RowStripe
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ColumnStripe
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ColumnStripe
     (This : TableStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TableStyle_Object;

