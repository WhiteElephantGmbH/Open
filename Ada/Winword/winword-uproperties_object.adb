package body winword.uProperties_Object is

   function Item
     (This  : uProperties_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uProperties_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_Application
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uProperties_Get_Application);
   end Get_Application;

   function Get_Parent
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uProperties_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uProperties_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uProperties_uNewEnum);
   end uNewEnum;

   function Get_VBE
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uProperties_Get_VBE);
   end Get_VBE;

end winword.uProperties_Object;

