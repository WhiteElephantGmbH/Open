with GNATCOM.Dispinterface;

package winword.Revision_Object is

   type Revision_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Author
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Date
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   procedure uAccept
     (This : Revision_Type);

   procedure Reject
     (This : Revision_Type);

   function Get_Style
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FormatDescription
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT;

end winword.Revision_Object;

