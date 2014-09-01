package body winword.Zooms_Object is

   function Get_Application
     (This : Zooms_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zooms_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Zooms_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zooms_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Zooms_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zooms_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Zooms_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Zooms_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Zooms_Object;

