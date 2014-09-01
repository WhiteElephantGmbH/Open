with GNATCOM.Dispinterface;

package winword.ListParagraphs_Object is

   type ListParagraphs_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListParagraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ListParagraphs_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ListParagraphs_Object;

