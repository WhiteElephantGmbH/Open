with GNATCOM.Dispinterface;

package winword.Revision_Interface is

   type Revision_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Revision_Type);

   function Pointer (This : Revision_Type)
     return Pointer_To_Revision;

   procedure Attach (This    : in out Revision_Type;
                     Pointer : in     Pointer_To_Revision);

   function Get_Application
     (This : Revision_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Revision_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Revision_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Author
     (This : Revision_Type)
     return GNATCOM.Types.BSTR;

   function Get_Date
     (This : Revision_Type)
     return GNATCOM.Types.DATE;

   function Get_Range
     (This : Revision_Type)
     return Pointer_To_uRange;

   function Get_Type
     (This : Revision_Type)
     return WdRevisionType;

   function Get_Index
     (This : Revision_Type)
     return Interfaces.C.long;

   procedure uAccept
     (This : Revision_Type);

   procedure Reject
     (This : Revision_Type);

   function Get_Style
     (This : Revision_Type)
     return Pointer_To_Style;

   function Get_FormatDescription
     (This : Revision_Type)
     return GNATCOM.Types.BSTR;

end winword.Revision_Interface;

