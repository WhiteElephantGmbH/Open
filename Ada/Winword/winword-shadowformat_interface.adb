with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ShadowFormat_Interface is

   procedure Initialize (This : in out ShadowFormat_Type) is
   begin
      Set_IID (This, IID_ShadowFormat);
   end Initialize;

   function Pointer (This : ShadowFormat_Type)
     return Pointer_To_ShadowFormat
   is
   begin
      return To_Pointer_To_ShadowFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out ShadowFormat_Type;
                     Pointer : in     Pointer_To_ShadowFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ShadowFormat_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : ShadowFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : ShadowFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_ForeColor
     (This : ShadowFormat_Type)
     return Pointer_To_ColorFormat
   is
       RetVal : aliased Pointer_To_ColorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ForeColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ForeColor;

   function Get_Obscured
     (This : ShadowFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Obscured
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Obscured;

   procedure Put_Obscured
     (This : ShadowFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Obscured
         (Pointer (This),
          prop));

   end Put_Obscured;

   function Get_OffsetX
     (This : ShadowFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OffsetX
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OffsetX;

   procedure Put_OffsetX
     (This : ShadowFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OffsetX
         (Pointer (This),
          prop));

   end Put_OffsetX;

   function Get_OffsetY
     (This : ShadowFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OffsetY
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OffsetY;

   procedure Put_OffsetY
     (This : ShadowFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OffsetY
         (Pointer (This),
          prop));

   end Put_OffsetY;

   function Get_Transparency
     (This : ShadowFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Transparency
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Transparency;

   procedure Put_Transparency
     (This : ShadowFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Transparency
         (Pointer (This),
          prop));

   end Put_Transparency;

   function Get_Type
     (This : ShadowFormat_Type)
     return MsoShadowType
   is
       RetVal : aliased MsoShadowType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : ShadowFormat_Type;
      prop : MsoShadowType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   function Get_Visible
     (This : ShadowFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : ShadowFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   procedure IncrementOffsetX
     (This      : ShadowFormat_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementOffsetX
         (Pointer (This),
          Increment));

   end IncrementOffsetX;

   procedure IncrementOffsetY
     (This      : ShadowFormat_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementOffsetY
         (Pointer (This),
          Increment));

   end IncrementOffsetY;

end winword.ShadowFormat_Interface;

