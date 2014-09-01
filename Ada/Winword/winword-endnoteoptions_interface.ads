with GNATCOM.Dispinterface;

package winword.EndnoteOptions_Interface is

   type EndnoteOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out EndnoteOptions_Type);

   function Pointer (This : EndnoteOptions_Type)
     return Pointer_To_EndnoteOptions;

   procedure Attach (This    : in out EndnoteOptions_Type;
                     Pointer : in     Pointer_To_EndnoteOptions);

   function Get_Application
     (This : EndnoteOptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : EndnoteOptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Location
     (This : EndnoteOptions_Type)
     return WdEndnoteLocation;

   procedure Put_Location
     (This : EndnoteOptions_Type;
      prop : WdEndnoteLocation);

   function Get_NumberStyle
     (This : EndnoteOptions_Type)
     return WdNoteNumberStyle;

   procedure Put_NumberStyle
     (This : EndnoteOptions_Type;
      prop : WdNoteNumberStyle);

   function Get_StartingNumber
     (This : EndnoteOptions_Type)
     return Interfaces.C.long;

   procedure Put_StartingNumber
     (This : EndnoteOptions_Type;
      prop : Interfaces.C.long);

   function Get_NumberingRule
     (This : EndnoteOptions_Type)
     return WdNumberingRule;

   procedure Put_NumberingRule
     (This : EndnoteOptions_Type;
      prop : WdNumberingRule);

end winword.EndnoteOptions_Interface;

