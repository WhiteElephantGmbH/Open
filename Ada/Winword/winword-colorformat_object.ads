with GNATCOM.Dispinterface;

package winword.ColorFormat_Object is

   type ColorFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RGB
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RGB
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SchemeColor
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SchemeColor
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TintAndShade
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TintAndShade
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OverPrint
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OverPrint
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Ink
     (This  : ColorFormat_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_Ink
     (This  : ColorFormat_Type;
      Index : GNATCOM.Types.VARIANT;
      P2    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Get_Cyan
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Cyan
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Magenta
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Magenta
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Yellow
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Yellow
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Black
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Black
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure SetCMYK
     (This    : ColorFormat_Type;
      Cyan    : GNATCOM.Types.VARIANT;
      Magenta : GNATCOM.Types.VARIANT;
      Yellow  : GNATCOM.Types.VARIANT;
      Black   : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

end winword.ColorFormat_Object;

