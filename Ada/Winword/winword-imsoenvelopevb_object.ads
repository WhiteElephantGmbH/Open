with GNATCOM.Dispinterface;

package winword.IMsoEnvelopeVB_Object is

   type IMsoEnvelopeVB_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Introduction
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Introduction
     (This : IMsoEnvelopeVB_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Item
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CommandBars
     (This : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.VARIANT;

end winword.IMsoEnvelopeVB_Object;

