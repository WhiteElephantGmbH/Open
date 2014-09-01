with GNATCOM.Dispinterface;

package winword.TextFrame_Object is

   type TextFrame_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MarginBottom
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MarginBottom
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MarginLeft
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MarginLeft
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MarginRight
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MarginRight
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MarginTop
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MarginTop
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Orientation
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Orientation
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextRange
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ContainingRange
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Next
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Previous
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Previous
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Overflowing
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasText
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure BreakForwardLink
     (This : TextFrame_Type);

   function ValidLinkTarget
     (This            : TextFrame_Type;
      TargetTextFrame : GNATCOM.Types.VARIANT;
      Free            : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_AutoSize
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoSize
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WordWrap
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WordWrap
     (This : TextFrame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TextFrame_Object;

