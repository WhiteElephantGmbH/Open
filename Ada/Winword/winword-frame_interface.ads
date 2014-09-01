with GNATCOM.Dispinterface;

package winword.Frame_Interface is

   type Frame_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Frame_Type);

   function Pointer (This : Frame_Type)
     return Pointer_To_Frame;

   procedure Attach (This    : in out Frame_Type;
                     Pointer : in     Pointer_To_Frame);

   function Get_Application
     (This : Frame_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Frame_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Frame_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_HeightRule
     (This : Frame_Type)
     return WdFrameSizeRule;

   procedure Put_HeightRule
     (This : Frame_Type;
      prop : WdFrameSizeRule);

   function Get_WidthRule
     (This : Frame_Type)
     return WdFrameSizeRule;

   procedure Put_WidthRule
     (This : Frame_Type;
      prop : WdFrameSizeRule);

   function Get_HorizontalDistanceFromText
     (This : Frame_Type)
     return Interfaces.C.C_float;

   procedure Put_HorizontalDistanceFromText
     (This : Frame_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : Frame_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : Frame_Type;
      prop : Interfaces.C.C_float);

   function Get_HorizontalPosition
     (This : Frame_Type)
     return Interfaces.C.C_float;

   procedure Put_HorizontalPosition
     (This : Frame_Type;
      prop : Interfaces.C.C_float);

   function Get_LockAnchor
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LockAnchor
     (This : Frame_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RelativeHorizontalPosition
     (This : Frame_Type)
     return WdRelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Frame_Type;
      prop : WdRelativeHorizontalPosition);

   function Get_RelativeVerticalPosition
     (This : Frame_Type)
     return WdRelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Frame_Type;
      prop : WdRelativeVerticalPosition);

   function Get_VerticalDistanceFromText
     (This : Frame_Type)
     return Interfaces.C.C_float;

   procedure Put_VerticalDistanceFromText
     (This : Frame_Type;
      prop : Interfaces.C.C_float);

   function Get_VerticalPosition
     (This : Frame_Type)
     return Interfaces.C.C_float;

   procedure Put_VerticalPosition
     (This : Frame_Type;
      prop : Interfaces.C.C_float);

   function Get_Width
     (This : Frame_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : Frame_Type;
      prop : Interfaces.C.C_float);

   function Get_TextWrap
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TextWrap
     (This : Frame_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Shading
     (This : Frame_Type)
     return Pointer_To_Shading;

   function Get_Borders
     (This : Frame_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Frame_Type;
      prop : Pointer_To_Borders);

   function Get_Range
     (This : Frame_Type)
     return Pointer_To_uRange;

   procedure Delete
     (This : Frame_Type);

   procedure uSelect
     (This : Frame_Type);

   procedure Copy
     (This : Frame_Type);

   procedure Cut
     (This : Frame_Type);

end winword.Frame_Interface;

