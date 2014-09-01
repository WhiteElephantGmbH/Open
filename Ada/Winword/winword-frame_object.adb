package body winword.Frame_Object is

   function Get_Application
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Parent);
   end Get_Parent;

   function Get_HeightRule
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_HeightRule);
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_HeightRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeightRule;

   function Get_WidthRule
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_WidthRule);
   end Get_WidthRule;

   procedure Put_WidthRule
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_WidthRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WidthRule;

   function Get_HorizontalDistanceFromText
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_HorizontalDistanceFromText);
   end Get_HorizontalDistanceFromText;

   procedure Put_HorizontalDistanceFromText
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_HorizontalDistanceFromText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalDistanceFromText;

   function Get_Height
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HorizontalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_HorizontalPosition);
   end Get_HorizontalPosition;

   procedure Put_HorizontalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_HorizontalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalPosition;

   function Get_LockAnchor
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_LockAnchor);
   end Get_LockAnchor;

   procedure Put_LockAnchor
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_LockAnchor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LockAnchor;

   function Get_RelativeHorizontalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_RelativeHorizontalPosition);
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_RelativeHorizontalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_RelativeVerticalPosition);
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_RelativeVerticalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeVerticalPosition;

   function Get_VerticalDistanceFromText
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_VerticalDistanceFromText);
   end Get_VerticalDistanceFromText;

   procedure Put_VerticalDistanceFromText
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_VerticalDistanceFromText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalDistanceFromText;

   function Get_VerticalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_VerticalPosition);
   end Get_VerticalPosition;

   procedure Put_VerticalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_VerticalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalPosition;

   function Get_Width
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_TextWrap
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_TextWrap);
   end Get_TextWrap;

   procedure Put_TextWrap
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_TextWrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextWrap;

   function Get_Shading
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Shading);
   end Get_Shading;

   function Get_Borders
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frame_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Range
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frame_Get_Range);
   end Get_Range;

   procedure Delete
     (This : Frame_Type)
   is
   begin
      Invoke (This, Frame_Delete);
   end Delete;

   procedure uSelect
     (This : Frame_Type)
   is
   begin
      Invoke (This, Frame_uSelect);
   end uSelect;

   procedure Copy
     (This : Frame_Type)
   is
   begin
      Invoke (This, Frame_Copy);
   end Copy;

   procedure Cut
     (This : Frame_Type)
   is
   begin
      Invoke (This, Frame_Cut);
   end Cut;

end winword.Frame_Object;

