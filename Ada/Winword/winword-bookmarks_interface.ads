with GNATCOM.Dispinterface;

package winword.Bookmarks_Interface is

   type Bookmarks_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Bookmarks_Type);

   function Pointer (This : Bookmarks_Type)
     return Pointer_To_Bookmarks;

   procedure Attach (This    : in out Bookmarks_Type;
                     Pointer : in     Pointer_To_Bookmarks);

   function Getu_NewEnum
     (This : Bookmarks_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Bookmarks_Type)
     return Interfaces.C.long;

   function Get_DefaultSorting
     (This : Bookmarks_Type)
     return WdBookmarkSortBy;

   procedure Put_DefaultSorting
     (This : Bookmarks_Type;
      prop : WdBookmarkSortBy);

   function Get_ShowHidden
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowHidden
     (This : Bookmarks_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Application
     (This : Bookmarks_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Bookmarks_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Bookmarks_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Bookmarks_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Bookmark;

   function Add
     (This   : Bookmarks_Type;
      Name   : GNATCOM.Types.BSTR;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free   : Boolean := True)
     return Pointer_To_Bookmark;

   function Exists
     (This : Bookmarks_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

end winword.Bookmarks_Interface;

