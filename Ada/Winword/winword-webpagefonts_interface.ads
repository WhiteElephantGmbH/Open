with GNATCOM.Dispinterface;

package winword.WebPageFonts_Interface is

   type WebPageFonts_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out WebPageFonts_Type);

   function Pointer (This : WebPageFonts_Type)
     return Pointer_To_WebPageFonts;

   procedure Attach (This    : in out WebPageFonts_Type;
                     Pointer : in     Pointer_To_WebPageFonts);

   function Get_Application
     (This    : WebPageFonts_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : WebPageFonts_Type)
     return Interfaces.C.long;

   function Get_Count
     (This  : WebPageFonts_Type)
     return Interfaces.C.int;

   function Get_Item
     (This  : WebPageFonts_Type;
      Index : MsoCharacterSet)
     return Pointer_To_WebPageFont;

   function Getu_NewEnum
     (This     : WebPageFonts_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.WebPageFonts_Interface;

