with GNATCOM.Dispinterface;

package winword.HorizontalLineFormat_Object is

   type HorizontalLineFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PercentWidth
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PercentWidth
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoShade
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoShade
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WidthType
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WidthType
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.HorizontalLineFormat_Object;

