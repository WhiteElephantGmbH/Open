with GNATCOM.Dispinterface;

package winword.ConditionalStyle_Interface is

   type ConditionalStyle_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ConditionalStyle_Type);

   function Pointer (This : ConditionalStyle_Type)
     return Pointer_To_ConditionalStyle;

   procedure Attach (This    : in out ConditionalStyle_Type;
                     Pointer : in     Pointer_To_ConditionalStyle);

   function Get_Application
     (This : ConditionalStyle_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ConditionalStyle_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ConditionalStyle_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Shading
     (This : ConditionalStyle_Type)
     return Pointer_To_Shading;

   function Get_Borders
     (This : ConditionalStyle_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : ConditionalStyle_Type;
      prop : Pointer_To_Borders);

   function Get_BottomPadding
     (This : ConditionalStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_BottomPadding
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_TopPadding
     (This : ConditionalStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_TopPadding
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftPadding
     (This : ConditionalStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftPadding
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_RightPadding
     (This : ConditionalStyle_Type)
     return Interfaces.C.C_float;

   procedure Put_RightPadding
     (This : ConditionalStyle_Type;
      prop : Interfaces.C.C_float);

   function Get_ParagraphFormat
     (This : ConditionalStyle_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_ParagraphFormat
     (This : ConditionalStyle_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_Font
     (This : ConditionalStyle_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : ConditionalStyle_Type;
      prop : Pointer_To_uFont);

end winword.ConditionalStyle_Interface;

