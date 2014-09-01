with GNATCOM.Dispinterface;

package winword.IApplicationEvents3_Interface is

   type IApplicationEvents3_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out IApplicationEvents3_Type);

   function Pointer (This : IApplicationEvents3_Type)
     return Pointer_To_IApplicationEvents3;

   procedure Attach (This    : in out IApplicationEvents3_Type;
                     Pointer : in     Pointer_To_IApplicationEvents3);

   procedure Startup
     (This : IApplicationEvents3_Type);

   procedure Quit
     (This : IApplicationEvents3_Type);

   procedure DocumentChange
     (This : IApplicationEvents3_Type);

   procedure DocumentOpen
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure DocumentBeforeClose
     (This   : IApplicationEvents3_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure DocumentBeforePrint
     (This   : IApplicationEvents3_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure DocumentBeforeSave
     (This     : IApplicationEvents3_Type;
      Doc      : Pointer_To_uDocument;
      SaveAsUI : GNATCOM.Types.Pointer_To_VARIANT_BOOL;
      Cancel   : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure NewDocument
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure WindowActivate
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window);

   procedure WindowDeactivate
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window);

   procedure WindowSelectionChange
     (This : IApplicationEvents3_Type;
      Sel  : Pointer_To_Selection);

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents3_Type;
      Sel    : Pointer_To_Selection;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents3_Type;
      Sel    : Pointer_To_Selection;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure EPostagePropertyDialog
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure EPostageInsert
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure MailMergeAfterMerge
     (This      : IApplicationEvents3_Type;
      Doc       : Pointer_To_uDocument;
      DocResult : Pointer_To_uDocument);

   procedure MailMergeAfterRecordMerge
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure MailMergeBeforeMerge
     (This        : IApplicationEvents3_Type;
      Doc         : Pointer_To_uDocument;
      StartRecord : Interfaces.C.long;
      EndRecord   : Interfaces.C.long;
      Cancel      : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure MailMergeBeforeRecordMerge
     (This   : IApplicationEvents3_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure MailMergeDataSourceLoad
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure MailMergeDataSourceValidate
     (This    : IApplicationEvents3_Type;
      Doc     : Pointer_To_uDocument;
      Handled : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure MailMergeWizardSendToCustom
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument);

   procedure MailMergeWizardStateChange
     (This      : IApplicationEvents3_Type;
      Doc       : Pointer_To_uDocument;
      FromState : GNATCOM.Types.Pointer_To_int;
      ToState   : GNATCOM.Types.Pointer_To_int;
      Handled   : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure WindowSize
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window);

end winword.IApplicationEvents3_Interface;

