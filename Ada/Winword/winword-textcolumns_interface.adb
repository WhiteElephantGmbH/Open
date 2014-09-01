with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TextColumns_Interface is

   procedure Initialize (This : in out TextColumns_Type) is
   begin
      Set_IID (This, IID_TextColumns);
   end Initialize;

   function Pointer (This : TextColumns_Type)
     return Pointer_To_TextColumns
   is
   begin
      return To_Pointer_To_TextColumns (Address (This));
   end Pointer;

   procedure Attach (This    : in out TextColumns_Type;
                     Pointer : in     Pointer_To_TextColumns)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : TextColumns_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : TextColumns_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_Application
     (This : TextColumns_Type)
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
     (This : TextColumns_Type)
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
     (This : TextColumns_Type)
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

   function Get_EvenlySpaced
     (This : TextColumns_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EvenlySpaced
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EvenlySpaced;

   procedure Put_EvenlySpaced
     (This : TextColumns_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EvenlySpaced
         (Pointer (This),
          prop));

   end Put_EvenlySpaced;

   function Get_LineBetween
     (This : TextColumns_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineBetween
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineBetween;

   procedure Put_LineBetween
     (This : TextColumns_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineBetween
         (Pointer (This),
          prop));

   end Put_LineBetween;

   function Get_Width
     (This : TextColumns_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : TextColumns_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Spacing
     (This : TextColumns_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Spacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Spacing;

   procedure Put_Spacing
     (This : TextColumns_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Spacing
         (Pointer (This),
          prop));

   end Put_Spacing;

   function Item
     (This  : TextColumns_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TextColumn
   is
       RetVal : aliased Pointer_To_TextColumn;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This         : TextColumns_Type;
      Width        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Spacing      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EvenlySpaced : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TextColumn
   is
       RetVal : aliased Pointer_To_TextColumn;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Width,
          Spacing,
          EvenlySpaced,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure SetCount
     (This       : TextColumns_Type;
      NumColumns : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetCount
         (Pointer (This),
          NumColumns));

   end SetCount;

   function Get_FlowDirection
     (This : TextColumns_Type)
     return WdFlowDirection
   is
       RetVal : aliased WdFlowDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FlowDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FlowDirection;

   procedure Put_FlowDirection
     (This : TextColumns_Type;
      prop : WdFlowDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FlowDirection
         (Pointer (This),
          prop));

   end Put_FlowDirection;

end winword.TextColumns_Interface;

