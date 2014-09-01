with GNATCOM.Dispinterface;

package winword.FootnoteOptions_Object is

   type FootnoteOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Location
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Location
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberStyle
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartingNumber
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartingNumber
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberingRule
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberingRule
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.FootnoteOptions_Object;

