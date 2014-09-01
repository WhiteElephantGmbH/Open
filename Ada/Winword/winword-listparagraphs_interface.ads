with GNATCOM.Dispinterface;

package winword.ListParagraphs_Interface is

   type ListParagraphs_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListParagraphs_Type);

   function Pointer (This : ListParagraphs_Type)
     return Pointer_To_ListParagraphs;

   procedure Attach (This    : in out ListParagraphs_Type;
                     Pointer : in     Pointer_To_ListParagraphs);

   function Getu_NewEnum
     (This : ListParagraphs_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ListParagraphs_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : ListParagraphs_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListParagraphs_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListParagraphs_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : ListParagraphs_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Paragraph;

end winword.ListParagraphs_Interface;

