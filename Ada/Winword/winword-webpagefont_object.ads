with GNATCOM.Dispinterface;

package winword.WebPageFont_Object is

   type WebPageFont_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProportionalFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ProportionalFont
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ProportionalFontSize
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ProportionalFontSize
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FixedWidthFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FixedWidthFont
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FixedWidthFontSize
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FixedWidthFontSize
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.WebPageFont_Object;

