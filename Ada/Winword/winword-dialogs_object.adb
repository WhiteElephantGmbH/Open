package body winword.Dialogs_Object is

   function Get_Application
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialogs_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialogs_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialogs_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialogs_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialogs_Get_Count);
   end Get_Count;

   function Item
     (This  : Dialogs_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Dialogs_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Dialogs_Object;

