with GNATCOM.Dispinterface;

package winword.Endnotes_Object is

   type Endnotes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Location
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Location
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberStyle
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartingNumber
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartingNumber
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberingRule
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberingRule
     (This : Endnotes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Separator
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ContinuationSeparator
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ContinuationNotice
     (This : Endnotes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Endnotes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This      : Endnotes_Type;
      uRange    : GNATCOM.Types.VARIANT;
      Reference : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Text      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

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

end winword.Endnotes_Object;

