with GNATCOM.Dispinterface;

package winword.TextFrame_Interface is

   type TextFrame_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TextFrame_Type);

   function Pointer (This : TextFrame_Type)
     return Pointer_To_TextFrame;

   procedure Attach (This    : in out TextFrame_Type;
                     Pointer : in     Pointer_To_TextFrame);

   function Get_Application
     (This : TextFrame_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TextFrame_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TextFrame_Type)
     return Pointer_To_Shape;

   function Get_MarginBottom
     (This : TextFrame_Type)
     return Interfaces.C.C_float;

   procedure Put_MarginBottom
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float);

   function Get_MarginLeft
     (This : TextFrame_Type)
     return Interfaces.C.C_float;

   procedure Put_MarginLeft
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float);

   function Get_MarginRight
     (This : TextFrame_Type)
     return Interfaces.C.C_float;

   procedure Put_MarginRight
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float);

   function Get_MarginTop
     (This : TextFrame_Type)
     return Interfaces.C.C_float;

   procedure Put_MarginTop
     (This : TextFrame_Type;
      prop : Interfaces.C.C_float);

   function Get_Orientation
     (This : TextFrame_Type)
     return MsoTextOrientation;

   procedure Put_Orientation
     (This : TextFrame_Type;
      prop : MsoTextOrientation);

   function Get_TextRange
     (This : TextFrame_Type)
     return Pointer_To_uRange;

   function Get_ContainingRange
     (This : TextFrame_Type)
     return Pointer_To_uRange;

   function Get_Next
     (This : TextFrame_Type)
     return Pointer_To_TextFrame;

   procedure Put_Next
     (This : TextFrame_Type;
      prop : Pointer_To_TextFrame);

   function Get_Previous
     (This : TextFrame_Type)
     return Pointer_To_TextFrame;

   procedure Put_Previous
     (This : TextFrame_Type;
      prop : Pointer_To_TextFrame);

   function Get_Overflowing
     (This : TextFrame_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_HasText
     (This : TextFrame_Type)
     return Interfaces.C.long;

   procedure BreakForwardLink
     (This : TextFrame_Type);

   function ValidLinkTarget
     (This            : TextFrame_Type;
      TargetTextFrame : Pointer_To_TextFrame)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_AutoSize
     (This : TextFrame_Type)
     return Interfaces.C.long;

   procedure Put_AutoSize
     (This : TextFrame_Type;
      prop : Interfaces.C.long);

   function Get_WordWrap
     (This : TextFrame_Type)
     return Interfaces.C.long;

   procedure Put_WordWrap
     (This : TextFrame_Type;
      prop : Interfaces.C.long);

end winword.TextFrame_Interface;

