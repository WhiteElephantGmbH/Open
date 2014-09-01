with GNATCOM.Dispinterface;

package winword.IApplicationEvents2_Interface is

   type IApplicationEvents2_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out IApplicationEvents2_Type);

   function Pointer (This : IApplicationEvents2_Type)
     return Pointer_To_IApplicationEvents2;

   procedure Attach (This    : in out IApplicationEvents2_Type;
                     Pointer : in     Pointer_To_IApplicationEvents2);

   procedure Startup
     (This : IApplicationEvents2_Type);

   procedure Quit
     (This : IApplicationEvents2_Type);

   procedure DocumentChange
     (This : IApplicationEvents2_Type);

   procedure DocumentOpen
     (This : IApplicationEvents2_Type;
      Doc  : Pointer_To_uDocument);

   procedure DocumentBeforeClose
     (This   : IApplicationEvents2_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure DocumentBeforePrint
     (This   : IApplicationEvents2_Type;
      Doc    : Pointer_To_uDocument;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure DocumentBeforeSave
     (This     : IApplicationEvents2_Type;
      Doc      : Pointer_To_uDocument;
      SaveAsUI : GNATCOM.Types.Pointer_To_VARIANT_BOOL;
      Cancel   : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure NewDocument
     (This : IApplicationEvents2_Type;
      Doc  : Pointer_To_uDocument);

   procedure WindowActivate
     (This : IApplicationEvents2_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window);

   procedure WindowDeactivate
     (This : IApplicationEvents2_Type;
      Doc  : Pointer_To_uDocument;
      Wn   : Pointer_To_Window);

   procedure WindowSelectionChange
     (This : IApplicationEvents2_Type;
      Sel  : Pointer_To_Selection);

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents2_Type;
      Sel    : Pointer_To_Selection;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents2_Type;
      Sel    : Pointer_To_Selection;
      Cancel : GNATCOM.Types.Pointer_To_VARIANT_BOOL);

end winword.IApplicationEvents2_Interface;

