with GNATCOM.Dispinterface;

package winword.HeadersFooters_Object is

   type HeadersFooters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : HeadersFooters_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : HeadersFooters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.HeadersFooters_Object;

