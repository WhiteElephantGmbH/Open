with GNATCOM.Dispinterface;

package winword.TableStyle_Interface is

   type TableStyle_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TableStyle_Type);

   function Pointer (This : TableStyle_Type)
     return Pointer_To_TableStyle;

   procedure Attach (This    : in out TableStyle_Type;
                     Pointer : in     Pointer_To_TableStyle);

   function Get_Application
     (This : TableStyle_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TableStyle_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TableStyle_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_AllowPageBreaks
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AllowPageBreaks
     (This : TableStyle_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Borders
     (This : TableStyle_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : TableStyle_Type;
      prop : Pointer_To_Borders);

   function Get_BottomPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_BottomPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_TopPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_TopPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_RightPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_RightPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_Alignment
     (This : TableStyle_Type)
     return WdRowAlignment;

   procedure Put_Alignment
     (This : TableStyle_Type;
      prop : WdRowAlignment);

   function Get_Spacing
     (This : TableStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_Spacing
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float);

   function Condition
     (This          : TableStyle_Type;
      ConditionCode : WdConditionCode)
     return Pointer_To_ConditionalStyle;

   function Get_TableDirection
     (This : TableStyle_Type)
     return WdTableDirection;

   procedure Put_TableDirection
     (This : TableStyle_Type;
      prop : WdTableDirection);

   function Get_AllowBreakAcrossPage
     (This : TableStyle_Type)
     return Interfaces.C.long;

   procedure Put_AllowBreakAcrossPage
     (This : TableStyle_Type;
      prop : Interfaces.C.long);

   function Get_LeftIndent
     (This : TableStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_Shading
     (This : TableStyle_Type)
     return Pointer_To_Shading;

   function Get_RowStripe
     (This : TableStyle_Type)
     return Interfaces.C.long;

   procedure Put_RowStripe
     (This : TableStyle_Type;
      prop : Interfaces.C.long);

   function Get_ColumnStripe
     (This : TableStyle_Type)
     return Interfaces.C.long;

   procedure Put_ColumnStripe
     (This : TableStyle_Type;
      prop : Interfaces.C.long);

end winword.TableStyle_Interface;

