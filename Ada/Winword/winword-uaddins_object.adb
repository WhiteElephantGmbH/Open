package body winword.uAddIns_Object is

   function Item
     (This  : uAddIns_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uAddIns_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_VBE
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uAddIns_Get_VBE);
   end Get_VBE;

   function Get_Parent
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uAddIns_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uAddIns_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uAddIns_uNewEnum);
   end uNewEnum;

   procedure Update
     (This : uAddIns_Type)
   is
   begin
      Invoke (This, uAddIns_Update);
   end Update;

end winword.uAddIns_Object;

