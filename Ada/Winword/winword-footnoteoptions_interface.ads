with GNATCOM.Dispinterface;

package winword.FootnoteOptions_Interface is

   type FootnoteOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FootnoteOptions_Type);

   function Pointer (This : FootnoteOptions_Type)
     return Pointer_To_FootnoteOptions;

   procedure Attach (This    : in out FootnoteOptions_Type;
                     Pointer : in     Pointer_To_FootnoteOptions);

   function Get_Application
     (This : FootnoteOptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FootnoteOptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Location
     (This : FootnoteOptions_Type)
     return WdFootnoteLocation;

   procedure Put_Location
     (This : FootnoteOptions_Type;
      prop : WdFootnoteLocation);

   function Get_NumberStyle
     (This : FootnoteOptions_Type)
     return WdNoteNumberStyle;

   procedure Put_NumberStyle
     (This : FootnoteOptions_Type;
      prop : WdNoteNumberStyle);

   function Get_StartingNumber
     (This : FootnoteOptions_Type)
     return Interfaces.C.long;

   procedure Put_StartingNumber
     (This : FootnoteOptions_Type;
      prop : Interfaces.C.long);

   function Get_NumberingRule
     (This : FootnoteOptions_Type)
     return WdNumberingRule;

   procedure Put_NumberingRule
     (This : FootnoteOptions_Type;
      prop : WdNumberingRule);

end winword.FootnoteOptions_Interface;

