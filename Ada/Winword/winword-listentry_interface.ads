with GNATCOM.Dispinterface;

package winword.ListEntry_Interface is

   type ListEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListEntry_Type);

   function Pointer (This : ListEntry_Type)
     return Pointer_To_ListEntry;

   procedure Attach (This    : in out ListEntry_Type;
                     Pointer : in     Pointer_To_ListEntry);

   function Get_Application
     (This : ListEntry_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListEntry_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListEntry_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : ListEntry_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : ListEntry_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : ListEntry_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure Delete
     (This : ListEntry_Type);

end winword.ListEntry_Interface;

