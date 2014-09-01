with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Bookmarks_Interface is

   procedure Initialize (This : in out Bookmarks_Type) is
   begin
      Set_IID (This, IID_Bookmarks);
   end Initialize;

   function Pointer (This : Bookmarks_Type)
     return Pointer_To_Bookmarks
   is
   begin
      return To_Pointer_To_Bookmarks (Address (This));
   end Pointer;

   procedure Attach (This    : in out Bookmarks_Type;
                     Pointer : in     Pointer_To_Bookmarks)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Bookmarks_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : Bookmarks_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_DefaultSorting
     (This : Bookmarks_Type)
     return WdBookmarkSortBy
   is
       RetVal : aliased WdBookmarkSortBy;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultSorting
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultSorting;

   procedure Put_DefaultSorting
     (This : Bookmarks_Type;
      prop : WdBookmarkSortBy)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultSorting
         (Pointer (This),
          prop));

   end Put_DefaultSorting;

   function Get_ShowHidden
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowHidden
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowHidden;

   procedure Put_ShowHidden
     (This : Bookmarks_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowHidden
         (Pointer (This),
          prop));

   end Put_ShowHidden;

   function Get_Application
     (This : Bookmarks_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Bookmarks_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Bookmarks_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Item
     (This  : Bookmarks_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Bookmark
   is
       RetVal : aliased Pointer_To_Bookmark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This   : Bookmarks_Type;
      Name   : GNATCOM.Types.BSTR;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free   : Boolean := True)
     return Pointer_To_Bookmark
   is
       RetVal : aliased Pointer_To_Bookmark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Name,
          uRange,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end Add;

   function Exists
     (This : Bookmarks_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Exists
         (Pointer (This),
          Name,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end Exists;

end winword.Bookmarks_Interface;

