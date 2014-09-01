with GNATCOM.Dispinterface;

package winword.HorizontalLineFormat_Interface is

   type HorizontalLineFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HorizontalLineFormat_Type);

   function Pointer (This : HorizontalLineFormat_Type)
     return Pointer_To_HorizontalLineFormat;

   procedure Attach (This    : in out HorizontalLineFormat_Type;
                     Pointer : in     Pointer_To_HorizontalLineFormat);

   function Get_Application
     (This : HorizontalLineFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HorizontalLineFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_PercentWidth
     (This : HorizontalLineFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_PercentWidth
     (This : HorizontalLineFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_NoShade
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_NoShade
     (This : HorizontalLineFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Alignment
     (This : HorizontalLineFormat_Type)
     return WdHorizontalLineAlignment;

   procedure Put_Alignment
     (This : HorizontalLineFormat_Type;
      prop : WdHorizontalLineAlignment);

   function Get_WidthType
     (This : HorizontalLineFormat_Type)
     return WdHorizontalLineWidthType;

   procedure Put_WidthType
     (This : HorizontalLineFormat_Type;
      prop : WdHorizontalLineWidthType);

end winword.HorizontalLineFormat_Interface;

