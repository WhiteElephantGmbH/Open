with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.IApplicationEvents2_Interface is

   procedure Initialize (This : in out IApplicationEvents2_Type) is
   begin
      Set_IID (This, IID_IApplicationEvents2);
   end Initialize;

   function Pointer (This : IApplicationEvents2_Type)
     return Pointer_To_IApplicationEvents2
   is
   begin
      return To_Pointer_To_IApplicationEvents2 (Address (This));
   end Pointer;

   procedure Attach (This    : in out IApplicationEvents2_Type;
                     Pointer : in     Pointer_To_IApplicationEvents2)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   procedure Startup
     (This : IApplicationEvents2_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Startup
         (Pointer (This)));

   end Startup;

   procedure Quit
     (This : IApplicationEvents2_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Quit
         (Pointer (This)));

   end Quit;

   procedure DocumentChange
     (This : IApplicationEvents2_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentChange
         (Pointer (This)));

   end DocumentChange;

   procedure DocumentOpen
     (This : IApplicationEvents2_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentOpen
         (Pointer (This),
          Doc));

   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : IApplicationEvents2_Type;
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
     (This   : IApplicationEvents2_Type;
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
     (This     : IApplicationEvents2_Type;
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
     (This : IApplicationEvents2_Type;
      Doc  : Pointer_To_uDocument)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewDocument
         (Pointer (This),
          Doc));

   end NewDocument;

   procedure WindowActivate
     (This : IApplicationEvents2_Type;
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
     (This : IApplicationEvents2_Type;
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
     (This : IApplicationEvents2_Type;
      Sel  : Pointer_To_Selection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WindowSelectionChange
         (Pointer (This),
          Sel));

   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents2_Type;
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
     (This   : IApplicationEvents2_Type;
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

end winword.IApplicationEvents2_Interface;

