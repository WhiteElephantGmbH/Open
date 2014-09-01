with GNATCOM.Dispinterface;

package winword.ConditionalStyle_Object is

   type ConditionalStyle_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shading
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BottomPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BottomPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightPadding
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightPadding
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ParagraphFormat
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ParagraphFormat
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Font
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : ConditionalStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.ConditionalStyle_Object;

