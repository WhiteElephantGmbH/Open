with GNATCOM.Dispinterface;

package winword.CustomLabel_Object is

   type CustomLabel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopMargin
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopMargin
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SideMargin
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SideMargin
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalPitch
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalPitch
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalPitch
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalPitch
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberAcross
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberAcross
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberDown
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberDown
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DotMatrix
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PageSize
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageSize
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Valid
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : CustomLabel_Type);

end winword.CustomLabel_Object;

