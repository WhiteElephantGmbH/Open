with GNATCOM.Dispinterface;

package winword.Frame_Object is

   type Frame_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HeightRule
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeightRule
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WidthRule
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WidthRule
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalDistanceFromText
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalDistanceFromText
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LockAnchor
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LockAnchor
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelativeHorizontalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeHorizontalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelativeVerticalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeVerticalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalDistanceFromText
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalDistanceFromText
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalPosition
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalPosition
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextWrap
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextWrap
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Frame_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Frame_Type);

   procedure uSelect
     (This : Frame_Type);

   procedure Copy
     (This : Frame_Type);

   procedure Cut
     (This : Frame_Type);

end winword.Frame_Object;

