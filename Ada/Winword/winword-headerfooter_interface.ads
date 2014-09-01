with GNATCOM.Dispinterface;

package winword.HeaderFooter_Interface is

   type HeaderFooter_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HeaderFooter_Type);

   function Pointer (This : HeaderFooter_Type)
     return Pointer_To_HeaderFooter;

   procedure Attach (This    : in out HeaderFooter_Type;
                     Pointer : in     Pointer_To_HeaderFooter);

   function Get_Application
     (This : HeaderFooter_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HeaderFooter_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HeaderFooter_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Range
     (This : HeaderFooter_Type)
     return Pointer_To_uRange;

   function Get_Index
     (This : HeaderFooter_Type)
     return WdHeaderFooterIndex;

   function Get_IsHeader
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Exists
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Exists
     (This : HeaderFooter_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PageNumbers
     (This : HeaderFooter_Type)
     return Pointer_To_PageNumbers;

   function Get_LinkToPrevious
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LinkToPrevious
     (This : HeaderFooter_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Shapes
     (This : HeaderFooter_Type)
     return Pointer_To_Shapes;

end winword.HeaderFooter_Interface;

