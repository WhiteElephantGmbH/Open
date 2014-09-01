with GNATCOM.Dispinterface;

package winword.Footnotes_Object is

   type Footnotes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Location
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Location
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberStyle
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartingNumber
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartingNumber
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberingRule
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberingRule
     (This : Footnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Separator
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ContinuationSeparator
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ContinuationNotice
     (This : Footnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Footnotes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This      : Footnotes_Type;
      uRange    : GNATCOM.Types.VARIANT;
      Reference : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Text      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

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

end winword.Footnotes_Object;

