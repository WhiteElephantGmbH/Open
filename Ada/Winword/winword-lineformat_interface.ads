with GNATCOM.Dispinterface;

package winword.LineFormat_Interface is

   type LineFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out LineFormat_Type);

   function Pointer (This : LineFormat_Type)
     return Pointer_To_LineFormat;

   procedure Attach (This    : in out LineFormat_Type;
                     Pointer : in     Pointer_To_LineFormat);

   function Get_Application
     (This : LineFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : LineFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : LineFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_BackColor
     (This : LineFormat_Type)
     return Pointer_To_ColorFormat;

   function Get_BeginArrowheadLength
     (This : LineFormat_Type)
     return MsoArrowheadLength;

   procedure Put_BeginArrowheadLength
     (This : LineFormat_Type;
      prop : MsoArrowheadLength);

   function Get_BeginArrowheadStyle
     (This : LineFormat_Type)
     return MsoArrowheadStyle;

   procedure Put_BeginArrowheadStyle
     (This : LineFormat_Type;
      prop : MsoArrowheadStyle);

   function Get_BeginArrowheadWidth
     (This : LineFormat_Type)
     return MsoArrowheadWidth;

   procedure Put_BeginArrowheadWidth
     (This : LineFormat_Type;
      prop : MsoArrowheadWidth);

   function Get_DashStyle
     (This : LineFormat_Type)
     return MsoLineDashStyle;

   procedure Put_DashStyle
     (This : LineFormat_Type;
      prop : MsoLineDashStyle);

   function Get_EndArrowheadLength
     (This : LineFormat_Type)
     return MsoArrowheadLength;

   procedure Put_EndArrowheadLength
     (This : LineFormat_Type;
      prop : MsoArrowheadLength);

   function Get_EndArrowheadStyle
     (This : LineFormat_Type)
     return MsoArrowheadStyle;

   procedure Put_EndArrowheadStyle
     (This : LineFormat_Type;
      prop : MsoArrowheadStyle);

   function Get_EndArrowheadWidth
     (This : LineFormat_Type)
     return MsoArrowheadWidth;

   procedure Put_EndArrowheadWidth
     (This : LineFormat_Type;
      prop : MsoArrowheadWidth);

   function Get_ForeColor
     (This : LineFormat_Type)
     return Pointer_To_ColorFormat;

   function Get_Pattern
     (This : LineFormat_Type)
     return MsoPatternType;

   procedure Put_Pattern
     (This : LineFormat_Type;
      prop : MsoPatternType);

   function Get_Style
     (This : LineFormat_Type)
     return MsoLineStyle;

   procedure Put_Style
     (This : LineFormat_Type;
      prop : MsoLineStyle);

   function Get_Transparency
     (This : LineFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Transparency
     (This : LineFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Visible
     (This : LineFormat_Type)
     return MsoTriState;

   procedure Put_Visible
     (This : LineFormat_Type;
      prop : MsoTriState);

   function Get_Weight
     (This : LineFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Weight
     (This : LineFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_InsetPen
     (This : LineFormat_Type)
     return MsoTriState;

   procedure Put_InsetPen
     (This : LineFormat_Type;
      prop : MsoTriState);

end winword.LineFormat_Interface;

