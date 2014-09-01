with GNATCOM.Dispinterface;

package winword.ListEntries_Interface is

   type ListEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListEntries_Type);

   function Pointer (This : ListEntries_Type)
     return Pointer_To_ListEntries;

   procedure Attach (This    : in out ListEntries_Type;
                     Pointer : in     Pointer_To_ListEntries);

   function Get_Application
     (This : ListEntries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListEntries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListEntries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : ListEntries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ListEntries_Type)
     return Interfaces.C.long;

   function Item
     (This  : ListEntries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ListEntry;

   function Add
     (This  : ListEntries_Type;
      Name  : GNATCOM.Types.BSTR;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free  : Boolean := True)
     return Pointer_To_ListEntry;

   procedure Clear
     (This : ListEntries_Type);

end winword.ListEntries_Interface;

