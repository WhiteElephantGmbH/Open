package body winword.uCodePane_Object is

   function Get_Collection
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_Collection);
   end Get_Collection;

   function Get_VBE
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_VBE);
   end Get_VBE;

   function Get_Window
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_Window);
   end Get_Window;

   procedure GetSelection
     (This        : uCodePane_Type;
      StartLine   : GNATCOM.Types.VARIANT;
      StartColumn : GNATCOM.Types.VARIANT;
      EndLine     : GNATCOM.Types.VARIANT;
      EndColumn   : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodePane_GetSelection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EndColumn,
          2 => EndLine,
          3 => StartColumn,
          4 => StartLine),
         Free);
   end GetSelection;

   procedure SetSelection
     (This        : uCodePane_Type;
      StartLine   : GNATCOM.Types.VARIANT;
      StartColumn : GNATCOM.Types.VARIANT;
      EndLine     : GNATCOM.Types.VARIANT;
      EndColumn   : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodePane_SetSelection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EndColumn,
          2 => EndLine,
          3 => StartColumn,
          4 => StartLine),
         Free);
   end SetSelection;

   function Get_TopLine
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_TopLine);
   end Get_TopLine;

   procedure Put_TopLine
     (This : uCodePane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCodePane_Put_TopLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopLine;

   function Get_CountOfVisibleLines
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_CountOfVisibleLines);
   end Get_CountOfVisibleLines;

   function Get_CodeModule
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_CodeModule);
   end Get_CodeModule;

   procedure Show
     (This : uCodePane_Type)
   is
   begin
      Invoke (This, uCodePane_Show);
   end Show;

   function Get_CodePaneView
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodePane_Get_CodePaneView);
   end Get_CodePaneView;

end winword.uCodePane_Object;

