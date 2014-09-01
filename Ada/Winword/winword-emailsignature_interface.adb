with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.EmailSignature_Interface is

   procedure Initialize (This : in out EmailSignature_Type) is
   begin
      Set_IID (This, IID_EmailSignature);
   end Initialize;

   function Pointer (This : EmailSignature_Type)
     return Pointer_To_EmailSignature
   is
   begin
      return To_Pointer_To_EmailSignature (Address (This));
   end Pointer;

   procedure Attach (This    : in out EmailSignature_Type;
                     Pointer : in     Pointer_To_EmailSignature)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : EmailSignature_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : EmailSignature_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : EmailSignature_Type)
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

   function Get_NewMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NewMessageSignature
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NewMessageSignature;

   procedure Put_NewMessageSignature
     (This : EmailSignature_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NewMessageSignature
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NewMessageSignature;

   function Get_ReplyMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReplyMessageSignature
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReplyMessageSignature;

   procedure Put_ReplyMessageSignature
     (This : EmailSignature_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReplyMessageSignature
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ReplyMessageSignature;

   function Get_EmailSignatureEntries
     (This : EmailSignature_Type)
     return Pointer_To_EmailSignatureEntries
   is
       RetVal : aliased Pointer_To_EmailSignatureEntries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmailSignatureEntries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EmailSignatureEntries;

end winword.EmailSignature_Interface;

