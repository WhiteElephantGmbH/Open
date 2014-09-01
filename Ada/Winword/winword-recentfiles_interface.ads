with GNATCOM.Dispinterface;

package winword.RecentFiles_Interface is

   type RecentFiles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out RecentFiles_Type);

   function Pointer (This : RecentFiles_Type)
     return Pointer_To_RecentFiles;

   procedure Attach (This    : in out RecentFiles_Type;
                     Pointer : in     Pointer_To_RecentFiles);

   function Get_Application
     (This : RecentFiles_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : RecentFiles_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : RecentFiles_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : RecentFiles_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : RecentFiles_Type)
     return Interfaces.C.long;

   function Get_Maximum
     (This : RecentFiles_Type)
     return Interfaces.C.long;

   procedure Put_Maximum
     (This : RecentFiles_Type;
      prop : Interfaces.C.long);

   function Item
     (This  : RecentFiles_Type;
      Index : Interfaces.C.long)
     return Pointer_To_RecentFile;

   function Add
     (This     : RecentFiles_Type;
      Document : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_RecentFile;

end winword.RecentFiles_Interface;

