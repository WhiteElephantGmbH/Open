with GNATCOM.Dispinterface;

package winword.Footnote_Object is

   type Footnote_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Reference
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Footnote_Type);

end winword.Footnote_Object;

