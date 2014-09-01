with GNATCOM.Dispinterface;

package winword.HeadersFooters_Interface is

   type HeadersFooters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HeadersFooters_Type);

   function Pointer (This : HeadersFooters_Type)
     return Pointer_To_HeadersFooters;

   procedure Attach (This    : in out HeadersFooters_Type;
                     Pointer : in     Pointer_To_HeadersFooters);

   function Get_Application
     (This : HeadersFooters_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HeadersFooters_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HeadersFooters_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : HeadersFooters_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : HeadersFooters_Type)
     return Interfaces.C.long;

   function Item
     (This  : HeadersFooters_Type;
      Index : WdHeaderFooterIndex)
     return Pointer_To_HeaderFooter;

end winword.HeadersFooters_Interface;

