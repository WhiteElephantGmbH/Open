with GNATCOM.Dispinterface;

package winword.EndnoteOptions_Object is

   type EndnoteOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Location
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Location
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberStyle
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartingNumber
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartingNumber
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberingRule
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberingRule
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.EndnoteOptions_Object;

