with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uCodePane_Interface is

   procedure Initialize (This : in out uCodePane_Type) is
   begin
      Set_IID (This, IID_uCodePane);
   end Initialize;

   function Pointer (This : uCodePane_Type)
     return Pointer_To_uCodePane
   is
   begin
      return To_Pointer_To_uCodePane (Address (This));
   end Pointer;

   procedure Attach (This    : in out uCodePane_Type;
                     Pointer : in     Pointer_To_uCodePane)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Collection
     (This    : uCodePane_Type)
     return Pointer_To_uCodePanes
   is
       RetVal : aliased Pointer_To_uCodePanes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Collection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Collection;

   function Get_VBE
     (This    : uCodePane_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBE;

   function Get_Window
     (This    : uCodePane_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Window
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Window;

   procedure GetSelection
     (This        : uCodePane_Type;
      StartLine   : GNATCOM.Types.Pointer_To_long;
      StartColumn : GNATCOM.Types.Pointer_To_long;
      EndLine     : GNATCOM.Types.Pointer_To_long;
      EndColumn   : GNATCOM.Types.Pointer_To_long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetSelection
         (Pointer (This),
          StartLine,
          StartColumn,
          EndLine,
          EndColumn));

   end GetSelection;

   procedure SetSelection
     (This        : uCodePane_Type;
      StartLine   : Interfaces.C.long;
      StartColumn : Interfaces.C.long;
      EndLine     : Interfaces.C.long;
      EndColumn   : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetSelection
         (Pointer (This),
          StartLine,
          StartColumn,
          EndLine,
          EndColumn));

   end SetSelection;

   function Get_TopLine
     (This    : uCodePane_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopLine
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopLine;

   procedure Put_TopLine
     (This    : uCodePane_Type;
      TopLine : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopLine
         (Pointer (This),
          TopLine));

   end Put_TopLine;

   function Get_CountOfVisibleLines
     (This                : uCodePane_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CountOfVisibleLines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CountOfVisibleLines;

   function Get_CodeModule
     (This       : uCodePane_Type)
     return Pointer_To_uCodeModule
   is
       RetVal : aliased Pointer_To_uCodeModule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CodeModule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CodeModule;

   procedure Show
     (This : uCodePane_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Show
         (Pointer (This)));

   end Show;

   function Get_CodePaneView
     (This          : uCodePane_Type)
     return vbext_CodePaneview
   is
       RetVal : aliased vbext_CodePaneview;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CodePaneView
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CodePaneView;

end winword.uCodePane_Interface;

