with GNATCOM.Dispinterface;

package winword.Endnotes_Interface is

   type Endnotes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Endnotes_Type);

   function Pointer (This : Endnotes_Type)
     return Pointer_To_Endnotes;

   procedure Attach (This    : in out Endnotes_Type;
                     Pointer : in     Pointer_To_Endnotes);

   function Getu_NewEnum
     (This : Endnotes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Endnotes_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Endnotes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Endnotes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Endnotes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Location
     (This : Endnotes_Type)
     return WdEndnoteLocation;

   procedure Put_Location
     (This : Endnotes_Type;
      prop : WdEndnoteLocation);

   function Get_NumberStyle
     (This : Endnotes_Type)
     return WdNoteNumberStyle;

   procedure Put_NumberStyle
     (This : Endnotes_Type;
      prop : WdNoteNumberStyle);

   function Get_StartingNumber
     (This : Endnotes_Type)
     return Interfaces.C.long;

   procedure Put_StartingNumber
     (This : Endnotes_Type;
      prop : Interfaces.C.long);

   function Get_NumberingRule
     (This : Endnotes_Type)
     return WdNumberingRule;

   procedure Put_NumberingRule
     (This : Endnotes_Type;
      prop : WdNumberingRule);

   function Get_Separator
     (This : Endnotes_Type)
     return Pointer_To_uRange;

   function Get_ContinuationSeparator
     (This : Endnotes_Type)
     return Pointer_To_uRange;

   function Get_ContinuationNotice
     (This : Endnotes_Type)
     return Pointer_To_uRange;

   function Item
     (This  : Endnotes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Endnote;

   function Add
     (This      : Endnotes_Type;
      uRange    : Pointer_To_uRange;
      Reference : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Text      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Endnote;

   procedure Convert
     (This : Endnotes_Type);

   procedure SwapWithFootnotes
     (This : Endnotes_Type);

   procedure ResetSeparator
     (This : Endnotes_Type);

   procedure ResetContinuationSeparator
     (This : Endnotes_Type);

   procedure ResetContinuationNotice
     (This : Endnotes_Type);

end winword.Endnotes_Interface;

