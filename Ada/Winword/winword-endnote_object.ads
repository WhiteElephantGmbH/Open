with GNATCOM.Dispinterface;

package winword.Endnote_Object is

   type Endnote_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Reference
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Endnote_Type);

end winword.Endnote_Object;

