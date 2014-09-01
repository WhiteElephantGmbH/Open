with GNATCOM.Dispinterface;

package winword.HeaderFooter_Object is

   type HeaderFooter_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsHeader
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Exists
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Exists
     (This : HeaderFooter_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageNumbers
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LinkToPrevious
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LinkToPrevious
     (This : HeaderFooter_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shapes
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT;

end winword.HeaderFooter_Object;

