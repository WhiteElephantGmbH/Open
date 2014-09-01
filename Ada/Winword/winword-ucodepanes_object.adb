package body winword.uCodePanes_Object is

   function Get_Parent
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePanes_Get_Parent);
   end Get_Parent;

   function Get_VBE
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePanes_Get_VBE);
   end Get_VBE;

   function Item
     (This  : uCodePanes_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCodePanes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_Count
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePanes_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uCodePanes_uNewEnum);
   end uNewEnum;

   function Get_Current
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePanes_Get_Current);
   end Get_Current;

   procedure Put_Current
     (This : uCodePanes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCodePanes_Put_Current,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Current;

end winword.uCodePanes_Object;

