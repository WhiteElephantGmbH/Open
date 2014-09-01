package body winword.AutoCaptions_Object is

   function Get_Application
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaptions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaptions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaptions_Get_Count);
   end Get_Count;

   function Item
     (This  : AutoCaptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoCaptions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure CancelAutoInsert
     (This : AutoCaptions_Type)
   is
   begin
      Invoke (This, AutoCaptions_CancelAutoInsert);
   end CancelAutoInsert;

end winword.AutoCaptions_Object;

