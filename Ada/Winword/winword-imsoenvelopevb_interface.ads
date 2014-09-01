with GNATCOM.Dispinterface;

package winword.IMsoEnvelopeVB_Interface is

   type IMsoEnvelopeVB_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out IMsoEnvelopeVB_Type);

   function Pointer (This : IMsoEnvelopeVB_Type)
     return Pointer_To_IMsoEnvelopeVB;

   procedure Attach (This    : in out IMsoEnvelopeVB_Type;
                     Pointer : in     Pointer_To_IMsoEnvelopeVB);

   function Get_Introduction
     (This       : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Introduction
     (This       : IMsoEnvelopeVB_Type;
      pbstrIntro : GNATCOM.Types.BSTR;
      Free       : Boolean := True);

   function Get_Item
     (This   : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Parent
     (This   : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CommandBars
     (This   : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

end winword.IMsoEnvelopeVB_Interface;

