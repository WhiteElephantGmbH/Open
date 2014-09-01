with GNATCOM.Dispinterface;

package winword.WebPageFonts_Object is

   type WebPageFonts_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : WebPageFonts_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT;

end winword.WebPageFonts_Object;

