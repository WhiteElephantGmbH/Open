with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ConditionalStyle_Interface is

   procedure Initialize (This : in out ConditionalStyle_Type) is
   begin
      Set_IID (This, IID_ConditionalStyle);
   end Initialize;

   function Pointer (This : ConditionalStyle_Type)
     return Pointer_To_ConditionalStyle
   is
   begin
      return To_Pointer_To_ConditionalStyle (Address (This));
   end Pointer;

   procedure Attach (This    : in out ConditionalStyle_Type;
                     Pointer : in     Pointer_To_ConditionalStyle)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type)
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

   function Get_Shading
     (This : ConditionalStyle_Type)
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

   function Get_Borders
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_BottomPadding
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BottomPadding
         (Pointer (This),
          prop));

   end Put_BottomPadding;

   function Get_TopPadding
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopPadding
         (Pointer (This),
          prop));

   end Put_TopPadding;

   function Get_LeftPadding
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftPadding
         (Pointer (This),
          prop));

   end Put_LeftPadding;

   function Get_RightPadding
     (This : ConditionalStyle_Type)
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
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightPadding
         (Pointer (This),
          prop));

   end Put_RightPadding;

   function Get_ParagraphFormat
     (This : ConditionalStyle_Type)
     return Pointer_To_uParagraphFormat
   is
       RetVal : aliased Pointer_To_uParagraphFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ParagraphFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : ConditionalStyle_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ParagraphFormat
         (Pointer (This),
          prop));

   end Put_ParagraphFormat;

   function Get_Font
     (This : ConditionalStyle_Type)
     return Pointer_To_uFont
   is
       RetVal : aliased Pointer_To_uFont;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Font
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Font;

   procedure Put_Font
     (This : ConditionalStyle_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

end winword.ConditionalStyle_Interface;

