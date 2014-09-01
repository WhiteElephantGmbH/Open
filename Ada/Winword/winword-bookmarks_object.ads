with GNATCOM.Dispinterface;

package winword.Bookmarks_Object is

   type Bookmarks_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultSorting
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultSorting
     (This : Bookmarks_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowHidden
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowHidden
     (This : Bookmarks_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Application
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Bookmarks_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : Bookmarks_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Exists
     (This : Bookmarks_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Bookmarks_Object;

