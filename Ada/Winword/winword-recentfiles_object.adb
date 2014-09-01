package body winword.RecentFiles_Object is

   function Get_Application
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFiles_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFiles_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFiles_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFiles_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFiles_Get_Count);
   end Get_Count;

   function Get_Maximum
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFiles_Get_Maximum);
   end Get_Maximum;

   procedure Put_Maximum
     (This : RecentFiles_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RecentFiles_Put_Maximum,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Maximum;

   function Item
     (This  : RecentFiles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         RecentFiles_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This     : RecentFiles_Type;
      Document : GNATCOM.Types.VARIANT;
      ReadOnly : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         RecentFiles_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ReadOnly,
          2 => Document),
         Free);
   end Add;

end winword.RecentFiles_Object;

