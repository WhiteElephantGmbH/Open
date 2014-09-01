with GNATCOM.Dispinterface;

package winword.LineFormat_Object is

   type LineFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BackColor
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BeginArrowheadLength
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BeginArrowheadLength
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BeginArrowheadStyle
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BeginArrowheadStyle
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BeginArrowheadWidth
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BeginArrowheadWidth
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DashStyle
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DashStyle
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EndArrowheadLength
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EndArrowheadLength
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EndArrowheadStyle
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EndArrowheadStyle
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EndArrowheadWidth
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EndArrowheadWidth
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ForeColor
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Pattern
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Pattern
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Style
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Transparency
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Transparency
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Visible
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Weight
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Weight
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InsetPen
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsetPen
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.LineFormat_Object;

