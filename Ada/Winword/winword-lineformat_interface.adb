with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.LineFormat_Interface is

   procedure Initialize (This : in out LineFormat_Type) is
   begin
      Set_IID (This, IID_LineFormat);
   end Initialize;

   function Pointer (This : LineFormat_Type)
     return Pointer_To_LineFormat
   is
   begin
      return To_Pointer_To_LineFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out LineFormat_Type;
                     Pointer : in     Pointer_To_LineFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : LineFormat_Type)
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
     (This : LineFormat_Type)
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
     (This : LineFormat_Type)
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

   function Get_BackColor
     (This : LineFormat_Type)
     return Pointer_To_ColorFormat
   is
       RetVal : aliased Pointer_To_ColorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BackColor;

   function Get_BeginArrowheadLength
     (This : LineFormat_Type)
     return MsoArrowheadLength
   is
       RetVal : aliased MsoArrowheadLength;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginArrowheadLength
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginArrowheadLength;

   procedure Put_BeginArrowheadLength
     (This : LineFormat_Type;
      prop : MsoArrowheadLength)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BeginArrowheadLength
         (Pointer (This),
          prop));

   end Put_BeginArrowheadLength;

   function Get_BeginArrowheadStyle
     (This : LineFormat_Type)
     return MsoArrowheadStyle
   is
       RetVal : aliased MsoArrowheadStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginArrowheadStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginArrowheadStyle;

   procedure Put_BeginArrowheadStyle
     (This : LineFormat_Type;
      prop : MsoArrowheadStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BeginArrowheadStyle
         (Pointer (This),
          prop));

   end Put_BeginArrowheadStyle;

   function Get_BeginArrowheadWidth
     (This : LineFormat_Type)
     return MsoArrowheadWidth
   is
       RetVal : aliased MsoArrowheadWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginArrowheadWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginArrowheadWidth;

   procedure Put_BeginArrowheadWidth
     (This : LineFormat_Type;
      prop : MsoArrowheadWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BeginArrowheadWidth
         (Pointer (This),
          prop));

   end Put_BeginArrowheadWidth;

   function Get_DashStyle
     (This : LineFormat_Type)
     return MsoLineDashStyle
   is
       RetVal : aliased MsoLineDashStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DashStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DashStyle;

   procedure Put_DashStyle
     (This : LineFormat_Type;
      prop : MsoLineDashStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DashStyle
         (Pointer (This),
          prop));

   end Put_DashStyle;

   function Get_EndArrowheadLength
     (This : LineFormat_Type)
     return MsoArrowheadLength
   is
       RetVal : aliased MsoArrowheadLength;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndArrowheadLength
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndArrowheadLength;

   procedure Put_EndArrowheadLength
     (This : LineFormat_Type;
      prop : MsoArrowheadLength)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EndArrowheadLength
         (Pointer (This),
          prop));

   end Put_EndArrowheadLength;

   function Get_EndArrowheadStyle
     (This : LineFormat_Type)
     return MsoArrowheadStyle
   is
       RetVal : aliased MsoArrowheadStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndArrowheadStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndArrowheadStyle;

   procedure Put_EndArrowheadStyle
     (This : LineFormat_Type;
      prop : MsoArrowheadStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EndArrowheadStyle
         (Pointer (This),
          prop));

   end Put_EndArrowheadStyle;

   function Get_EndArrowheadWidth
     (This : LineFormat_Type)
     return MsoArrowheadWidth
   is
       RetVal : aliased MsoArrowheadWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndArrowheadWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndArrowheadWidth;

   procedure Put_EndArrowheadWidth
     (This : LineFormat_Type;
      prop : MsoArrowheadWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EndArrowheadWidth
         (Pointer (This),
          prop));

   end Put_EndArrowheadWidth;

   function Get_ForeColor
     (This : LineFormat_Type)
     return Pointer_To_ColorFormat
   is
       RetVal : aliased Pointer_To_ColorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ForeColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ForeColor;

   function Get_Pattern
     (This : LineFormat_Type)
     return MsoPatternType
   is
       RetVal : aliased MsoPatternType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Pattern
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Pattern;

   procedure Put_Pattern
     (This : LineFormat_Type;
      prop : MsoPatternType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Pattern
         (Pointer (This),
          prop));

   end Put_Pattern;

   function Get_Style
     (This : LineFormat_Type)
     return MsoLineStyle
   is
       RetVal : aliased MsoLineStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

   procedure Put_Style
     (This : LineFormat_Type;
      prop : MsoLineStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_Transparency
     (This : LineFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Transparency
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Transparency;

   procedure Put_Transparency
     (This : LineFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Transparency
         (Pointer (This),
          prop));

   end Put_Transparency;

   function Get_Visible
     (This : LineFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : LineFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   function Get_Weight
     (This : LineFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Weight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Weight;

   procedure Put_Weight
     (This : LineFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Weight
         (Pointer (This),
          prop));

   end Put_Weight;

   function Get_InsetPen
     (This : LineFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsetPen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsetPen;

   procedure Put_InsetPen
     (This : LineFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsetPen
         (Pointer (This),
          prop));

   end Put_InsetPen;

end winword.LineFormat_Interface;

