with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TextFrame_Interface is

   procedure Initialize (This : in out TextFrame_Type) is
   begin
      Set_IID (This, IID_TextFrame);
   end Initialize;

   function Pointer (This : TextFrame_Type)
     return Pointer_To_TextFrame
   is
   begin
      return To_Pointer_To_TextFrame (Address (This));
   end Pointer;

   procedure Attach (This    : in out TextFrame_Type;
                     Pointer : in     Pointer_To_TextFrame)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TextFrame_Type)
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
     (This : TextFrame_Type)
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
     (This : TextFrame_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_MarginBottom
     (This : TextFrame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MarginBottom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MarginBottom;

   procedure Put_MarginBottom
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MarginBottom
         (Pointer (This),
          prop));

   end Put_MarginBottom;

   function Get_MarginLeft
     (This : TextFrame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MarginLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MarginLeft;

   procedure Put_MarginLeft
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MarginLeft
         (Pointer (This),
          prop));

   end Put_MarginLeft;

   function Get_MarginRight
     (This : TextFrame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MarginRight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MarginRight;

   procedure Put_MarginRight
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MarginRight
         (Pointer (This),
          prop));

   end Put_MarginRight;

   function Get_MarginTop
     (This : TextFrame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MarginTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MarginTop;

   procedure Put_MarginTop
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MarginTop
         (Pointer (This),
          prop));

   end Put_MarginTop;

   function Get_Orientation
     (This : TextFrame_Type)
     return MsoTextOrientation
   is
       RetVal : aliased MsoTextOrientation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Orientation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Orientation;

   procedure Put_Orientation
     (This : TextFrame_Type;
      prop : MsoTextOrientation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Orientation
         (Pointer (This),
          prop));

   end Put_Orientation;

   function Get_TextRange
     (This : TextFrame_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextRange
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextRange;

   function Get_ContainingRange
     (This : TextFrame_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ContainingRange
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ContainingRange;

   function Get_Next
     (This : TextFrame_Type)
     return Pointer_To_TextFrame
   is
       RetVal : aliased Pointer_To_TextFrame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   procedure Put_Next
     (This : TextFrame_Type;
      prop : Pointer_To_TextFrame)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Next
         (Pointer (This),
          prop));

   end Put_Next;

   function Get_Previous
     (This : TextFrame_Type)
     return Pointer_To_TextFrame
   is
       RetVal : aliased Pointer_To_TextFrame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   procedure Put_Previous
     (This : TextFrame_Type;
      prop : Pointer_To_TextFrame)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Previous
         (Pointer (This),
          prop));

   end Put_Previous;

   function Get_Overflowing
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Overflowing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Overflowing;

   function Get_HasText
     (This : TextFrame_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasText;

   procedure BreakForwardLink
     (This : TextFrame_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BreakForwardLink
         (Pointer (This)));

   end BreakForwardLink;

   function ValidLinkTarget
     (This            : TextFrame_Type;
      TargetTextFrame : Pointer_To_TextFrame)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ValidLinkTarget
         (Pointer (This),
          TargetTextFrame,
          RetVal'Unchecked_Access));

      return RetVal;
   end ValidLinkTarget;

   function Get_AutoSize
     (This : TextFrame_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoSize;

   procedure Put_AutoSize
     (This : TextFrame_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoSize
         (Pointer (This),
          prop));

   end Put_AutoSize;

   function Get_WordWrap
     (This : TextFrame_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WordWrap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : TextFrame_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WordWrap
         (Pointer (This),
          prop));

   end Put_WordWrap;

end winword.TextFrame_Interface;

