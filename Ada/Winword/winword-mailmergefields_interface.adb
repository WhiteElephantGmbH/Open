with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailMergeFields_Interface is

   procedure Initialize (This : in out MailMergeFields_Type) is
   begin
      Set_IID (This, IID_MailMergeFields);
   end Initialize;

   function Pointer (This : MailMergeFields_Type)
     return Pointer_To_MailMergeFields
   is
   begin
      return To_Pointer_To_MailMergeFields (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailMergeFields_Type;
                     Pointer : in     Pointer_To_MailMergeFields)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailMergeFields_Type)
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
     (This : MailMergeFields_Type)
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
     (This : MailMergeFields_Type)
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

   function Getu_NewEnum
     (This : MailMergeFields_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : MailMergeFields_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Item
     (This  : MailMergeFields_Type;
      Index : Interfaces.C.long)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange;
      Name   : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          Name,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end Add;

   function AddAsk
     (This           : MailMergeFields_Type;
      uRange         : Pointer_To_uRange;
      Name           : GNATCOM.Types.BSTR;
      Prompt         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultAskText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AskOnce        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free           : Boolean := True)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddAsk
         (Pointer (This),
          uRange,
          Name,
          Prompt,
          DefaultAskText,
          AskOnce,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end AddAsk;

   function AddFillIn
     (This              : MailMergeFields_Type;
      uRange            : Pointer_To_uRange;
      Prompt            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultFillInText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AskOnce           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFillIn
         (Pointer (This),
          uRange,
          Prompt,
          DefaultFillInText,
          AskOnce,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddFillIn;

   function AddIf
     (This          : MailMergeFields_Type;
      uRange        : Pointer_To_uRange;
      MergeField    : GNATCOM.Types.BSTR;
      Comparison    : WdMailMergeComparison;
      CompareTo     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TrueAutoText  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TrueText      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FalseAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FalseText     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free          : Boolean := True)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddIf
         (Pointer (This),
          uRange,
          MergeField,
          Comparison,
          CompareTo,
          TrueAutoText,
          TrueText,
          FalseAutoText,
          FalseText,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (MergeField);
      
      end if;

      return RetVal;
   end AddIf;

   function AddMergeRec
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddMergeRec
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddMergeRec;

   function AddMergeSeq
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddMergeSeq
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddMergeSeq;

   function AddNext
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddNext
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddNext;

   function AddNextIf
     (This       : MailMergeFields_Type;
      uRange     : Pointer_To_uRange;
      MergeField : GNATCOM.Types.BSTR;
      Comparison : WdMailMergeComparison;
      CompareTo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddNextIf
         (Pointer (This),
          uRange,
          MergeField,
          Comparison,
          CompareTo,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (MergeField);
      
      end if;

      return RetVal;
   end AddNextIf;

   function AddSet
     (This          : MailMergeFields_Type;
      uRange        : Pointer_To_uRange;
      Name          : GNATCOM.Types.BSTR;
      ValueText     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ValueAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free          : Boolean := True)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddSet
         (Pointer (This),
          uRange,
          Name,
          ValueText,
          ValueAutoText,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end AddSet;

   function AddSkipIf
     (This       : MailMergeFields_Type;
      uRange     : Pointer_To_uRange;
      MergeField : GNATCOM.Types.BSTR;
      Comparison : WdMailMergeComparison;
      CompareTo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddSkipIf
         (Pointer (This),
          uRange,
          MergeField,
          Comparison,
          CompareTo,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (MergeField);
      
      end if;

      return RetVal;
   end AddSkipIf;

end winword.MailMergeFields_Interface;

