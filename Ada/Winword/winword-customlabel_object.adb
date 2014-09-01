package body winword.CustomLabel_Object is

   function Get_Application
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Index);
   end Get_Index;

   function Get_Name
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_TopMargin
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_TopMargin);
   end Get_TopMargin;

   procedure Put_TopMargin
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_TopMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopMargin;

   function Get_SideMargin
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_SideMargin);
   end Get_SideMargin;

   procedure Put_SideMargin
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_SideMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SideMargin;

   function Get_Height
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_Width
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_VerticalPitch
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_VerticalPitch);
   end Get_VerticalPitch;

   procedure Put_VerticalPitch
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_VerticalPitch,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalPitch;

   function Get_HorizontalPitch
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_HorizontalPitch);
   end Get_HorizontalPitch;

   procedure Put_HorizontalPitch
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_HorizontalPitch,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalPitch;

   function Get_NumberAcross
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_NumberAcross);
   end Get_NumberAcross;

   procedure Put_NumberAcross
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_NumberAcross,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberAcross;

   function Get_NumberDown
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_NumberDown);
   end Get_NumberDown;

   procedure Put_NumberDown
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_NumberDown,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberDown;

   function Get_DotMatrix
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_DotMatrix);
   end Get_DotMatrix;

   function Get_PageSize
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_PageSize);
   end Get_PageSize;

   procedure Put_PageSize
     (This : CustomLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomLabel_Put_PageSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageSize;

   function Get_Valid
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabel_Get_Valid);
   end Get_Valid;

   procedure Delete
     (This : CustomLabel_Type)
   is
   begin
      Invoke (This, CustomLabel_Delete);
   end Delete;

end winword.CustomLabel_Object;

