with GNATCOM.Dispinterface;

package winword.WebPageFont_Interface is

   type WebPageFont_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out WebPageFont_Type);

   function Pointer (This : WebPageFont_Type)
     return Pointer_To_WebPageFont;

   procedure Attach (This    : in out WebPageFont_Type;
                     Pointer : in     Pointer_To_WebPageFont);

   function Get_Application
     (This    : WebPageFont_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : WebPageFont_Type)
     return Interfaces.C.long;

   function Get_ProportionalFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ProportionalFont
     (This : WebPageFont_Type;
      pstr : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ProportionalFontSize
     (This : WebPageFont_Type)
     return Interfaces.C.C_float;

   procedure Put_ProportionalFontSize
     (This : WebPageFont_Type;
      pf   : Interfaces.C.C_float);

   function Get_FixedWidthFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FixedWidthFont
     (This : WebPageFont_Type;
      pstr : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_FixedWidthFontSize
     (This : WebPageFont_Type)
     return Interfaces.C.C_float;

   procedure Put_FixedWidthFontSize
     (This : WebPageFont_Type;
      pf   : Interfaces.C.C_float);

end winword.WebPageFont_Interface;

