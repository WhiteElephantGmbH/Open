with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uLetterContent_Interface is

   procedure Initialize (This : in out uLetterContent_Type) is
   begin
      Set_IID (This, IID_uLetterContent);
   end Initialize;

   function Pointer (This : uLetterContent_Type)
     return Pointer_To_uLetterContent
   is
   begin
      return To_Pointer_To_uLetterContent (Address (This));
   end Pointer;

   procedure Attach (This    : in out uLetterContent_Type;
                     Pointer : in     Pointer_To_uLetterContent)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : uLetterContent_Type)
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
     (This : uLetterContent_Type)
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
     (This : uLetterContent_Type)
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

   function Get_Duplicate
     (This : uLetterContent_Type)
     return Pointer_To_uLetterContent
   is
       RetVal : aliased Pointer_To_uLetterContent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Duplicate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Duplicate;

   function Get_DateFormat
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DateFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DateFormat;

   procedure Put_DateFormat
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DateFormat
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DateFormat;

   function Get_IncludeHeaderFooter
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeHeaderFooter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeHeaderFooter;

   procedure Put_IncludeHeaderFooter
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeHeaderFooter
         (Pointer (This),
          prop));

   end Put_IncludeHeaderFooter;

   function Get_PageDesign
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageDesign
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageDesign;

   procedure Put_PageDesign
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageDesign
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_PageDesign;

   function Get_LetterStyle
     (This : uLetterContent_Type)
     return WdLetterStyle
   is
       RetVal : aliased WdLetterStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LetterStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LetterStyle;

   procedure Put_LetterStyle
     (This : uLetterContent_Type;
      prop : WdLetterStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LetterStyle
         (Pointer (This),
          prop));

   end Put_LetterStyle;

   function Get_Letterhead
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Letterhead
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Letterhead;

   procedure Put_Letterhead
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Letterhead
         (Pointer (This),
          prop));

   end Put_Letterhead;

   function Get_LetterheadLocation
     (This : uLetterContent_Type)
     return WdLetterheadLocation
   is
       RetVal : aliased WdLetterheadLocation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LetterheadLocation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LetterheadLocation;

   procedure Put_LetterheadLocation
     (This : uLetterContent_Type;
      prop : WdLetterheadLocation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LetterheadLocation
         (Pointer (This),
          prop));

   end Put_LetterheadLocation;

   function Get_LetterheadSize
     (This : uLetterContent_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LetterheadSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LetterheadSize;

   procedure Put_LetterheadSize
     (This : uLetterContent_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LetterheadSize
         (Pointer (This),
          prop));

   end Put_LetterheadSize;

   function Get_RecipientName
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientName;

   procedure Put_RecipientName
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_RecipientName;

   function Get_RecipientAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientAddress
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientAddress;

   procedure Put_RecipientAddress
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientAddress
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_RecipientAddress;

   function Get_Salutation
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Salutation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Salutation;

   procedure Put_Salutation
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Salutation
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Salutation;

   function Get_SalutationType
     (This : uLetterContent_Type)
     return WdSalutationType
   is
       RetVal : aliased WdSalutationType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SalutationType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SalutationType;

   procedure Put_SalutationType
     (This : uLetterContent_Type;
      prop : WdSalutationType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SalutationType
         (Pointer (This),
          prop));

   end Put_SalutationType;

   function Get_RecipientReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientReference
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientReference;

   procedure Put_RecipientReference
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientReference
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_RecipientReference;

   function Get_MailingInstructions
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailingInstructions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MailingInstructions;

   procedure Put_MailingInstructions
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MailingInstructions
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_MailingInstructions;

   function Get_AttentionLine
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AttentionLine
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AttentionLine;

   procedure Put_AttentionLine
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AttentionLine
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_AttentionLine;

   function Get_Subject
     (This : uLetterContent_Type)
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
     (This : uLetterContent_Type;
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

   function Get_EnclosureNumber
     (This : uLetterContent_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnclosureNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnclosureNumber;

   procedure Put_EnclosureNumber
     (This : uLetterContent_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnclosureNumber
         (Pointer (This),
          prop));

   end Put_EnclosureNumber;

   function Get_CCList
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CCList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CCList;

   procedure Put_CCList
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CCList
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_CCList;

   function Get_ReturnAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnAddress
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnAddress;

   procedure Put_ReturnAddress
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReturnAddress
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ReturnAddress;

   function Get_SenderName
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderName;

   procedure Put_SenderName
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderName;

   function Get_Closing
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Closing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Closing;

   procedure Put_Closing
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Closing
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Closing;

   function Get_SenderCompany
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderCompany
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderCompany;

   procedure Put_SenderCompany
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderCompany
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderCompany;

   function Get_SenderJobTitle
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderJobTitle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderJobTitle;

   procedure Put_SenderJobTitle
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderJobTitle
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderJobTitle;

   function Get_SenderInitials
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderInitials
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderInitials;

   procedure Put_SenderInitials
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderInitials
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderInitials;

   function Get_InfoBlock
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InfoBlock
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InfoBlock;

   procedure Put_InfoBlock
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InfoBlock
         (Pointer (This),
          prop));

   end Put_InfoBlock;

   function Get_RecipientCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientCode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientCode;

   procedure Put_RecipientCode
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientCode
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_RecipientCode;

   function Get_RecipientGender
     (This : uLetterContent_Type)
     return WdSalutationGender
   is
       RetVal : aliased WdSalutationGender;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientGender
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientGender;

   procedure Put_RecipientGender
     (This : uLetterContent_Type;
      prop : WdSalutationGender)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientGender
         (Pointer (This),
          prop));

   end Put_RecipientGender;

   function Get_ReturnAddressShortForm
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnAddressShortForm
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnAddressShortForm;

   procedure Put_ReturnAddressShortForm
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReturnAddressShortForm
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ReturnAddressShortForm;

   function Get_SenderCity
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderCity
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderCity;

   procedure Put_SenderCity
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderCity
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderCity;

   function Get_SenderCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderCode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderCode;

   procedure Put_SenderCode
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderCode
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderCode;

   function Get_SenderGender
     (This : uLetterContent_Type)
     return WdSalutationGender
   is
       RetVal : aliased WdSalutationGender;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderGender
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderGender;

   procedure Put_SenderGender
     (This : uLetterContent_Type;
      prop : WdSalutationGender)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderGender
         (Pointer (This),
          prop));

   end Put_SenderGender;

   function Get_SenderReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderReference
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderReference;

   procedure Put_SenderReference
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderReference
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SenderReference;

end winword.uLetterContent_Interface;

