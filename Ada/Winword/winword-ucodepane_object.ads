with GNATCOM.Dispinterface;

package winword.uCodePane_Object is

   type uCodePane_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Collection
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Window
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

   procedure GetSelection
     (This        : uCodePane_Type;
      StartLine   : GNATCOM.Types.VARIANT;
      StartColumn : GNATCOM.Types.VARIANT;
      EndLine     : GNATCOM.Types.VARIANT;
      EndColumn   : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure SetSelection
     (This        : uCodePane_Type;
      StartLine   : GNATCOM.Types.VARIANT;
      StartColumn : GNATCOM.Types.VARIANT;
      EndLine     : GNATCOM.Types.VARIANT;
      EndColumn   : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   function Get_TopLine
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopLine
     (This : uCodePane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CountOfVisibleLines
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CodeModule
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Show
     (This : uCodePane_Type);

   function Get_CodePaneView
     (This : uCodePane_Type)
     return GNATCOM.Types.VARIANT;

end winword.uCodePane_Object;

