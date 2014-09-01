with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.IApplicationEvents3_Interface is

   procedure Initialize (This : in out IApplicationEvents3_Type) is
   begin
      Set_IID (This, IID_IApplicationEvents3);
   end Initialize;

   function Pointer (This : IApplicationEvents3_Type)
     return Pointer_To_IApplicationEvents3
   is
   begin
      return To_Pointer_To_IApplicationEvents3 (Address (This));
   end Pointer;

   procedure Attach (This    : in out IApplicationEvents3_Type;
                     Pointer : in     Pointer_To_IApplicationEvents3)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   procedure Startup
     (This : IApplicationEvents3_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Startup
         (Pointer (This)));

   end Startup;

   procedure Quit
     (This : IApplicationEvents3_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Quit
         (Pointer (This)));

   end Quit;

   procedure DocumentChange
     (This : IApplicationEvents3_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentChange
         (Pointer (This)));

   end DocumentChange;

   procedure DocumentOpen
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentOpen
         (Pointer (This),
          Doc));

   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : IApplicationEvents3_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentBeforeClose
         (Pointer (This),
          Doc,
          Cancel));

   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : IApplicationEvents3_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentBeforePrint
         (Pointer (This),
          Doc,
          Cancel));

   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : IApplicationEvents3_Type;
      Doc      : Pointer_To_uDocument;
      SaveAsUI : GNATCOM.Types.Pointer_To_VARIANT_BOOL;
      Cancel   : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentBeforeSave
         (Pointer (This),
          Doc,
          SaveAsUI,
          Cancel));

   end DocumentBeforeSave;

   procedure NewDocument
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewDocument
         (Pointer (This),
          Doc));

   end NewDocument;

   procedure WindowActivate
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowActivate
         (Pointer (This),
          Doc,
          Wn));

   end WindowActivate;

   procedure WindowDeactivate
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowDeactivate
         (Pointer (This),
          Doc,
          Wn));

   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : IApplicationEvents3_Type;
      Sel  : Pointer_To_Selection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowSelectionChange
         (Pointer (This),
          Sel));

   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents3_Type;
      Sel    : Pointer_To_Selection;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowBeforeRightClick
         (Pointer (This),
          Sel,
          Cancel));

   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents3_Type;
      Sel    : Pointer_To_Selection;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowBeforeDoubleClick
         (Pointer (This),
          Sel,
          Cancel));

   end WindowBeforeDoubleClick;

   procedure EPostagePropertyDialog
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EPostagePropertyDialog
         (Pointer (This),
          Doc));

   end EPostagePropertyDialog;

   procedure EPostageInsert
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EPostageInsert
         (Pointer (This),
          Doc));

   end EPostageInsert;

   procedure MailMergeAfterMerge
     (This      : IApplicationEvents3_Type;
      Doc       : Pointer_To_uDocument;
      DocResult : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeAfterMerge
         (Pointer (This),
          Doc,
          DocResult));

   end MailMergeAfterMerge;

   procedure MailMergeAfterRecordMerge
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeAfterRecordMerge
         (Pointer (This),
          Doc));

   end MailMergeAfterRecordMerge;

   procedure MailMergeBeforeMerge
     (This        : IApplicationEvents3_Type;
      Doc         : Pointer_To_uDocument;
      StartRecord : Interfaces.C.long;
      EndRecord   : Interfaces.C.long;
      Cancel      : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeBeforeMerge
         (Pointer (This),
          Doc,
          StartRecord,
          EndRecord,
          Cancel));

   end MailMergeBeforeMerge;

   procedure MailMergeBeforeRecordMerge
     (This   : IApplicationEvents3_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeBeforeRecordMerge
         (Pointer (This),
          Doc,
          Cancel));

   end MailMergeBeforeRecordMerge;

   procedure MailMergeDataSourceLoad
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeDataSourceLoad
         (Pointer (This),
          Doc));

   end MailMergeDataSourceLoad;

   procedure MailMergeDataSourceValidate
     (This    : IApplicationEvents3_Type;
      Doc     : Pointer_To_uDocument;
      Handled : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeDataSourceValidate
         (Pointer (This),
          Doc,
          Handled));

   end MailMergeDataSourceValidate;

   procedure MailMergeWizardSendToCustom
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeWizardSendToCustom
         (Pointer (This),
          Doc));

   end MailMergeWizardSendToCustom;

   procedure MailMergeWizardStateChange
     (This      : IApplicationEvents3_Type;
      Doc       : Pointer_To_uDocument;
      FromState : GNATCOM.Types.Pointer_To_int;
      ToState   : GNATCOM.Types.Pointer_To_int;
      Handled   : GNATCOM.Types.Pointer_To_VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MailMergeWizardStateChange
         (Pointer (This),
          Doc,
          FromState,
          ToState,
          Handled));

   end MailMergeWizardStateChange;

   procedure WindowSize
     (This : IApplicationEvents3_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowSize
         (Pointer (This),
          Doc,
          Wn));

   end WindowSize;

end winword.IApplicationEvents3_Interface;

