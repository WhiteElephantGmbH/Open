with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TableStyle_Interface is

   procedure Initialize (This : in out TableStyle_Type) is
   begin
      Set_IID (This, IID_TableStyle);
   end Initialize;

   function Pointer (This : TableStyle_Type)
     return Pointer_To_TableStyle
   is
   begin
      return To_Pointer_To_TableStyle (Address (This));
   end Pointer;

   procedure Attach (This    : in out TableStyle_Type;
                     Pointer : in     Pointer_To_TableStyle)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TableStyle_Type)
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
     (This : TableStyle_Type)
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
     (This : TableStyle_Type)
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

   function Get_AllowPageBreaks
     (This : TableStyle_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowPageBreaks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowPageBreaks;

   procedure Put_AllowPageBreaks
     (This : TableStyle_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowPageBreaks
         (Pointer (This),
          prop));

   end Put_AllowPageBreaks;

   function Get_Borders
     (This : TableStyle_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : TableStyle_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_BottomPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BottomPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BottomPadding
         (Pointer (This),
          prop));

   end Put_BottomPadding;

   function Get_LeftPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftPadding
         (Pointer (This),
          prop));

   end Put_LeftPadding;

   function Get_TopPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopPadding
         (Pointer (This),
          prop));

   end Put_TopPadding;

   function Get_RightPadding
     (This : TableStyle_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightPadding
         (Pointer (This),
          prop));

   end Put_RightPadding;

   function Get_Alignment
     (This : TableStyle_Type)
     return WdRowAlignment
   is
       RetVal : aliased WdRowAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : TableStyle_Type;
      prop : WdRowAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_Spacing
     (This : TableStyle_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Spacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Spacing;

   procedure Put_Spacing
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Spacing
         (Pointer (This),
          prop));

   end Put_Spacing;

   function Condition
     (This          : TableStyle_Type;
      ConditionCode : WdConditionCode)
     return Pointer_To_ConditionalStyle
   is
       RetVal : aliased Pointer_To_ConditionalStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Condition
         (Pointer (This),
          ConditionCode,
          RetVal'Unchecked_Access));

      return RetVal;
   end Condition;

   function Get_TableDirection
     (This : TableStyle_Type)
     return WdTableDirection
   is
       RetVal : aliased WdTableDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TableDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TableDirection;

   procedure Put_TableDirection
     (This : TableStyle_Type;
      prop : WdTableDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TableDirection
         (Pointer (This),
          prop));

   end Put_TableDirection;

   function Get_AllowBreakAcrossPage
     (This : TableStyle_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowBreakAcrossPage
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowBreakAcrossPage;

   procedure Put_AllowBreakAcrossPage
     (This : TableStyle_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowBreakAcrossPage
         (Pointer (This),
          prop));

   end Put_AllowBreakAcrossPage;

   function Get_LeftIndent
     (This : TableStyle_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : TableStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftIndent
         (Pointer (This),
          prop));

   end Put_LeftIndent;

   function Get_Shading
     (This : TableStyle_Type)
     return Pointer_To_Shading
   is
       RetVal : aliased Pointer_To_Shading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shading;

   function Get_RowStripe
     (This : TableStyle_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RowStripe
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RowStripe;

   procedure Put_RowStripe
     (This : TableStyle_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RowStripe
         (Pointer (This),
          prop));

   end Put_RowStripe;

   function Get_ColumnStripe
     (This : TableStyle_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColumnStripe
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColumnStripe;

   procedure Put_ColumnStripe
     (This : TableStyle_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ColumnStripe
         (Pointer (This),
          prop));

   end Put_ColumnStripe;

end winword.TableStyle_Interface;

