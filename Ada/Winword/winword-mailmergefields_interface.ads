with GNATCOM.Dispinterface;

package winword.MailMergeFields_Interface is

   type MailMergeFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeFields_Type);

   function Pointer (This : MailMergeFields_Type)
     return Pointer_To_MailMergeFields;

   procedure Attach (This    : in out MailMergeFields_Type;
                     Pointer : in     Pointer_To_MailMergeFields);

   function Get_Application
     (This : MailMergeFields_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeFields_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeFields_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : MailMergeFields_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : MailMergeFields_Type)
     return Interfaces.C.long;

   function Item
     (This  : MailMergeFields_Type;
      Index : Interfaces.C.long)
     return Pointer_To_MailMergeField;

   function Add
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange;
      Name   : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return Pointer_To_MailMergeField;

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
     return Pointer_To_MailMergeField;

   function AddFillIn
     (This              : MailMergeFields_Type;
      uRange            : Pointer_To_uRange;
      Prompt            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultFillInText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AskOnce           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_MailMergeField;

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
     return Pointer_To_MailMergeField;

   function AddMergeRec
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_MailMergeField;

   function AddMergeSeq
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_MailMergeField;

   function AddNext
     (This   : MailMergeFields_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_MailMergeField;

   function AddNextIf
     (This       : MailMergeFields_Type;
      uRange     : Pointer_To_uRange;
      MergeField : GNATCOM.Types.BSTR;
      Comparison : WdMailMergeComparison;
      CompareTo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_MailMergeField;

   function AddSet
     (This          : MailMergeFields_Type;
      uRange        : Pointer_To_uRange;
      Name          : GNATCOM.Types.BSTR;
      ValueText     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ValueAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free          : Boolean := True)
     return Pointer_To_MailMergeField;

   function AddSkipIf
     (This       : MailMergeFields_Type;
      uRange     : Pointer_To_uRange;
      MergeField : GNATCOM.Types.BSTR;
      Comparison : WdMailMergeComparison;
      CompareTo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_MailMergeField;

end winword.MailMergeFields_Interface;

