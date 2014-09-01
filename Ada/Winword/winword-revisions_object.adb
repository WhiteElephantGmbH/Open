package body winword.Revisions_Object is

   function Get_Application
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revisions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revisions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revisions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revisions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revisions_Get_Count);
   end Get_Count;

   function Item
     (This  : Revisions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Revisions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure AcceptAll
     (This : Revisions_Type)
   is
   begin
      Invoke (This, Revisions_AcceptAll);
   end AcceptAll;

   procedure RejectAll
     (This : Revisions_Type)
   is
   begin
      Invoke (This, Revisions_RejectAll);
   end RejectAll;

end winword.Revisions_Object;

