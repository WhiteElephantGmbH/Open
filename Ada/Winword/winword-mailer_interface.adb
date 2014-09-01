with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Mailer_Interface is

   procedure Initialize (This : in out Mailer_Type) is
   begin
      Set_IID (This, IID_Mailer);
   end Initialize;

   function Pointer (This : Mailer_Type)
     return Pointer_To_Mailer
   is
   begin
      return To_Pointer_To_Mailer (Address (This));
   end Pointer;

   procedure Attach (This    : in out Mailer_Type;
                     Pointer : in     Pointer_To_Mailer)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Mailer_Type)
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
     (This : Mailer_Type)
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
     (This : Mailer_Type)
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

   function Get_BCCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BCCRecipients
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BCCRecipients;

   procedure Put_BCCRecipients
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BCCRecipients
         (Pointer (This),
          prop));

   end Put_BCCRecipients;

   function Get_CCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CCRecipients
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CCRecipients;

   procedure Put_CCRecipients
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CCRecipients
         (Pointer (This),
          prop));

   end Put_CCRecipients;

   function Get_Recipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Recipients
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Recipients;

   procedure Put_Recipients
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Recipients
         (Pointer (This),
          prop));

   end Put_Recipients;

   function Get_Enclosures
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Enclosures
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Enclosures;

   procedure Put_Enclosures
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Enclosures
         (Pointer (This),
          prop));

   end Put_Enclosures;

   function Get_Sender
     (This : Mailer_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Sender
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Sender;

   function Get_SendDateTime
     (This : Mailer_Type)
     return GNATCOM.Types.DATE
   is
       RetVal : aliased GNATCOM.Types.DATE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SendDateTime
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SendDateTime;

   function Get_Received
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Received
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Received;

   function Get_Subject
     (This : Mailer_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Subject
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Subject;

   procedure Put_Subject
     (This : Mailer_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Subject
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Subject;

end winword.Mailer_Interface;

