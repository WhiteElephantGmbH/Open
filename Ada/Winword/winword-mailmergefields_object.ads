with GNATCOM.Dispinterface;

package winword.MailMergeFields_Object is

   type MailMergeFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : MailMergeFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Name   : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddAsk
     (This           : MailMergeFields_Type;
      uRange         : GNATCOM.Types.VARIANT;
      Name           : GNATCOM.Types.VARIANT;
      Prompt         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultAskText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AskOnce        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddFillIn
     (This              : MailMergeFields_Type;
      uRange            : GNATCOM.Types.VARIANT;
      Prompt            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultFillInText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AskOnce           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddIf
     (This          : MailMergeFields_Type;
      uRange        : GNATCOM.Types.VARIANT;
      MergeField    : GNATCOM.Types.VARIANT;
      Comparison    : GNATCOM.Types.VARIANT;
      CompareTo     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TrueAutoText  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TrueText      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FalseAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FalseText     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddMergeRec
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddMergeSeq
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddNext
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddNextIf
     (This       : MailMergeFields_Type;
      uRange     : GNATCOM.Types.VARIANT;
      MergeField : GNATCOM.Types.VARIANT;
      Comparison : GNATCOM.Types.VARIANT;
      CompareTo  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddSet
     (This          : MailMergeFields_Type;
      uRange        : GNATCOM.Types.VARIANT;
      Name          : GNATCOM.Types.VARIANT;
      ValueText     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ValueAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddSkipIf
     (This       : MailMergeFields_Type;
      uRange     : GNATCOM.Types.VARIANT;
      MergeField : GNATCOM.Types.VARIANT;
      Comparison : GNATCOM.Types.VARIANT;
      CompareTo  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.MailMergeFields_Object;

