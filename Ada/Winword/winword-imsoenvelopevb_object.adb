package body winword.IMsoEnvelopeVB_Object is

   function Get_Introduction
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoEnvelopeVB_Get_Introduction);
   end Get_Introduction;

   procedure Put_Introduction
     (This : IMsoEnvelopeVB_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         IMsoEnvelopeVB_Put_Introduction,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Introduction;

   function Get_Item
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoEnvelopeVB_Get_Item);
   end Get_Item;

   function Get_Parent
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoEnvelopeVB_Get_Parent);
   end Get_Parent;

   function Get_CommandBars
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoEnvelopeVB_Get_CommandBars);
   end Get_CommandBars;

end winword.IMsoEnvelopeVB_Object;

