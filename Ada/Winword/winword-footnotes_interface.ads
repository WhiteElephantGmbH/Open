with GNATCOM.Dispinterface;

package winword.Footnotes_Interface is

   type Footnotes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Footnotes_Type);

   function Pointer (This : Footnotes_Type)
     return Pointer_To_Footnotes;

   procedure Attach (This    : in out Footnotes_Type;
                     Pointer : in     Pointer_To_Footnotes);

   function Getu_NewEnum
     (This : Footnotes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Footnotes_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Footnotes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Footnotes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Footnotes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Location
     (This : Footnotes_Type)
     return WdFootnoteLocation;

   procedure Put_Location
     (This : Footnotes_Type;
      prop : WdFootnoteLocation);

   function Get_NumberStyle
     (This : Footnotes_Type)
     return WdNoteNumberStyle;

   procedure Put_NumberStyle
     (This : Footnotes_Type;
      prop : WdNoteNumberStyle);

   function Get_StartingNumber
     (This : Footnotes_Type)
     return Interfaces.C.long;

   procedure Put_StartingNumber
     (This : Footnotes_Type;
      prop : Interfaces.C.long);

   function Get_NumberingRule
     (This : Footnotes_Type)
     return WdNumberingRule;

   procedure Put_NumberingRule
     (This : Footnotes_Type;
      prop : WdNumberingRule);

   function Get_Separator
     (This : Footnotes_Type)
     return Pointer_To_uRange;

   function Get_ContinuationSeparator
     (This : Footnotes_Type)
     return Pointer_To_uRange;

   function Get_ContinuationNotice
     (This : Footnotes_Type)
     return Pointer_To_uRange;

   function Item
     (This  : Footnotes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Footnote;

   function Add
     (This      : Footnotes_Type;
      uRange    : Pointer_To_uRange;
      Reference : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Text      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Footnote;

   procedure Convert
     (This : Footnotes_Type);

   procedure SwapWithEndnotes
     (This : Footnotes_Type);

   procedure ResetSeparator
     (This : Footnotes_Type);

   procedure ResetContinuationSeparator
     (This : Footnotes_Type);

   procedure ResetContinuationNotice
     (This : Footnotes_Type);

end winword.Footnotes_Interface;

