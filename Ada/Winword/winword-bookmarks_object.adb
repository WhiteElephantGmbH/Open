package body winword.Bookmarks_Object is

   function Getu_NewEnum
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Get_Count);
   end Get_Count;

   function Get_DefaultSorting
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Get_DefaultSorting);
   end Get_DefaultSorting;

   procedure Put_DefaultSorting
     (This : Bookmarks_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Bookmarks_Put_DefaultSorting,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultSorting;

   function Get_ShowHidden
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Get_ShowHidden);
   end Get_ShowHidden;

   procedure Put_ShowHidden
     (This : Bookmarks_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Bookmarks_Put_ShowHidden,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowHidden;

   function Get_Application
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Bookmarks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmarks_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Bookmarks_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Bookmarks_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : Bookmarks_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Bookmarks_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => Name),
         Free);
   end Add;

   function Exists
     (This : Bookmarks_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Bookmarks_Exists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Exists;

end winword.Bookmarks_Object;

