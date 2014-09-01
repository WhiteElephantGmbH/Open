with GNATCOM.Dispinterface;

package winword.uCodePane_Interface is

   type uCodePane_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uCodePane_Type);

   function Pointer (This : uCodePane_Type)
     return Pointer_To_uCodePane;

   procedure Attach (This    : in out uCodePane_Type;
                     Pointer : in     Pointer_To_uCodePane);

   function Get_Collection
     (This    : uCodePane_Type)
     return Pointer_To_uCodePanes;

   function Get_VBE
     (This    : uCodePane_Type)
     return Pointer_To_VBE;

   function Get_Window
     (This    : uCodePane_Type)
     return Pointer_To_Window;

   procedure GetSelection
     (This        : uCodePane_Type;
      StartLine   : GNATCOM.Types.Pointer_To_long;
      StartColumn : GNATCOM.Types.Pointer_To_long;
      EndLine     : GNATCOM.Types.Pointer_To_long;
      EndColumn   : GNATCOM.Types.Pointer_To_long);

   procedure SetSelection
     (This        : uCodePane_Type;
      StartLine   : Interfaces.C.long;
      StartColumn : Interfaces.C.long;
      EndLine     : Interfaces.C.long;
      EndColumn   : Interfaces.C.long);

   function Get_TopLine
     (This    : uCodePane_Type)
     return Interfaces.C.long;

   procedure Put_TopLine
     (This    : uCodePane_Type;
      TopLine : Interfaces.C.long);

   function Get_CountOfVisibleLines
     (This                : uCodePane_Type)
     return Interfaces.C.long;

   function Get_CodeModule
     (This       : uCodePane_Type)
     return Pointer_To_uCodeModule;

   procedure Show
     (This : uCodePane_Type);

   function Get_CodePaneView
     (This          : uCodePane_Type)
     return vbext_CodePaneview;

end winword.uCodePane_Interface;

