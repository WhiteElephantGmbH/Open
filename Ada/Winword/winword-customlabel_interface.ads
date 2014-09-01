with GNATCOM.Dispinterface;

package winword.CustomLabel_Interface is

   type CustomLabel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CustomLabel_Type);

   function Pointer (This : CustomLabel_Type)
     return Pointer_To_CustomLabel;

   procedure Attach (This    : in out CustomLabel_Type;
                     Pointer : in     Pointer_To_CustomLabel);

   function Get_Application
     (This : CustomLabel_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CustomLabel_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CustomLabel_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : CustomLabel_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : CustomLabel_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : CustomLabel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_TopMargin
     (This : CustomLabel_Type)
     return Interfaces.C.C_float;

   procedure Put_TopMargin
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float);

   function Get_SideMargin
     (This : CustomLabel_Type)
     return Interfaces.C.C_float;

   procedure Put_SideMargin
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : CustomLabel_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float);

   function Get_Width
     (This : CustomLabel_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float);

   function Get_VerticalPitch
     (This : CustomLabel_Type)
     return Interfaces.C.C_float;

   procedure Put_VerticalPitch
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float);

   function Get_HorizontalPitch
     (This : CustomLabel_Type)
     return Interfaces.C.C_float;

   procedure Put_HorizontalPitch
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float);

   function Get_NumberAcross
     (This : CustomLabel_Type)
     return Interfaces.C.long;

   procedure Put_NumberAcross
     (This : CustomLabel_Type;
      prop : Interfaces.C.long);

   function Get_NumberDown
     (This : CustomLabel_Type)
     return Interfaces.C.long;

   procedure Put_NumberDown
     (This : CustomLabel_Type;
      prop : Interfaces.C.long);

   function Get_DotMatrix
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_PageSize
     (This : CustomLabel_Type)
     return WdCustomLabelPageSize;

   procedure Put_PageSize
     (This : CustomLabel_Type;
      prop : WdCustomLabelPageSize);

   function Get_Valid
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Delete
     (This : CustomLabel_Type);

end winword.CustomLabel_Interface;

