package body winword.Sections_Object is

   function Getu_NewEnum
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_Count);
   end Get_Count;

   function Get_First
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_First);
   end Get_First;

   function Get_Last
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_Last);
   end Get_Last;

   function Get_Application
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_Parent);
   end Get_Parent;

   function Get_PageSetup
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Sections_Get_PageSetup);
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : Sections_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Sections_Put_PageSetup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageSetup;

   function Item
     (This  : Sections_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Sections_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : Sections_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Start  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Sections_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Start,
          2 => uRange),
         Free);
   end Add;

end winword.Sections_Object;

