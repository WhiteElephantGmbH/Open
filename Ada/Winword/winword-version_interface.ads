with GNATCOM.Dispinterface;

package winword.Version_Interface is

   type Version_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Version_Type);

   function Pointer (This : Version_Type)
     return Pointer_To_Version;

   procedure Attach (This    : in out Version_Type;
                     Pointer : in     Pointer_To_Version);

   function Get_Application
     (This : Version_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Version_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Version_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_SavedBy
     (This : Version_Type)
     return GNATCOM.Types.BSTR;

   function Get_Comment
     (This : Version_Type)
     return GNATCOM.Types.BSTR;

   function Get_Date
     (This : Version_Type)
     return GNATCOM.Types.DATE;

   function Get_Index
     (This : Version_Type)
     return Interfaces.C.long;

   procedure OpenOld
     (This : Version_Type);

   procedure Delete
     (This : Version_Type);

   function Open
     (This : Version_Type)
     return Pointer_To_uDocument;

end winword.Version_Interface;

