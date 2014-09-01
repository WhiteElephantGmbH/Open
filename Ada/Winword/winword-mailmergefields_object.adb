package body winword.MailMergeFields_Object is

   function Get_Application
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFields_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFields_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFields_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFields_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : MailMergeFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFields_Get_Count);
   end Get_Count;

   function Item
     (This  : MailMergeFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Name   : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name,
          2 => uRange),
         Free);
   end Add;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddAsk,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AskOnce,
          2 => DefaultAskText,
          3 => Prompt,
          4 => Name,
          5 => uRange),
         Free);
   end AddAsk;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddFillIn,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AskOnce,
          2 => DefaultFillInText,
          3 => Prompt,
          4 => uRange),
         Free);
   end AddFillIn;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddIf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FalseText,
          2 => FalseAutoText,
          3 => TrueText,
          4 => TrueAutoText,
          5 => CompareTo,
          6 => Comparison,
          7 => MergeField,
          8 => uRange),
         Free);
   end AddIf;

   function AddMergeRec
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddMergeRec,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end AddMergeRec;

   function AddMergeSeq
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddMergeSeq,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end AddMergeSeq;

   function AddNext
     (This   : MailMergeFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddNext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end AddNext;

   function AddNextIf
     (This       : MailMergeFields_Type;
      uRange     : GNATCOM.Types.VARIANT;
      MergeField : GNATCOM.Types.VARIANT;
      Comparison : GNATCOM.Types.VARIANT;
      CompareTo  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddNextIf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CompareTo,
          2 => Comparison,
          3 => MergeField,
          4 => uRange),
         Free);
   end AddNextIf;

   function AddSet
     (This          : MailMergeFields_Type;
      uRange        : GNATCOM.Types.VARIANT;
      Name          : GNATCOM.Types.VARIANT;
      ValueText     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ValueAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddSet,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ValueAutoText,
          2 => ValueText,
          3 => Name,
          4 => uRange),
         Free);
   end AddSet;

   function AddSkipIf
     (This       : MailMergeFields_Type;
      uRange     : GNATCOM.Types.VARIANT;
      MergeField : GNATCOM.Types.VARIANT;
      Comparison : GNATCOM.Types.VARIANT;
      CompareTo  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFields_AddSkipIf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CompareTo,
          2 => Comparison,
          3 => MergeField,
          4 => uRange),
         Free);
   end AddSkipIf;

end winword.MailMergeFields_Object;

