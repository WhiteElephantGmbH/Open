with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.IMsoEnvelopeVB_Interface is

   procedure Initialize (This : in out IMsoEnvelopeVB_Type) is
   begin
      Set_IID (This, IID_IMsoEnvelopeVB);
   end Initialize;

   function Pointer (This : IMsoEnvelopeVB_Type)
     return Pointer_To_IMsoEnvelopeVB
   is
   begin
      return To_Pointer_To_IMsoEnvelopeVB (Address (This));
   end Pointer;

   procedure Attach (This    : in out IMsoEnvelopeVB_Type;
                     Pointer : in     Pointer_To_IMsoEnvelopeVB)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Introduction
     (This       : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Introduction
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Introduction;

   procedure Put_Introduction
     (This       : IMsoEnvelopeVB_Type;
      pbstrIntro : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Introduction
         (Pointer (This),
          pbstrIntro));

      if Free then
               GNATCOM.Interface.Free (pbstrIntro);
      
      end if;

   end Put_Introduction;

   function Get_Item
     (This   : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Parent
     (This   : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_CommandBars
     (This   : IMsoEnvelopeVB_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandBars
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandBars;

end winword.IMsoEnvelopeVB_Interface;

