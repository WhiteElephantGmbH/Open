with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HeaderFooter_Interface is

   procedure Initialize (This : in out HeaderFooter_Type) is
   begin
      Set_IID (This, IID_HeaderFooter);
   end Initialize;

   function Pointer (This : HeaderFooter_Type)
     return Pointer_To_HeaderFooter
   is
   begin
      return To_Pointer_To_HeaderFooter (Address (This));
   end Pointer;

   procedure Attach (This    : in out HeaderFooter_Type;
                     Pointer : in     Pointer_To_HeaderFooter)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HeaderFooter_Type)
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
     (This : HeaderFooter_Type)
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
     (This : HeaderFooter_Type)
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

   function Get_Range
     (This : HeaderFooter_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Index
     (This : HeaderFooter_Type)
     return WdHeaderFooterIndex
   is
       RetVal : aliased WdHeaderFooterIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_IsHeader
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsHeader
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsHeader;

   function Get_Exists
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Exists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Exists;

   procedure Put_Exists
     (This : HeaderFooter_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Exists
         (Pointer (This),
          prop));

   end Put_Exists;

   function Get_PageNumbers
     (This : HeaderFooter_Type)
     return Pointer_To_PageNumbers
   is
       RetVal : aliased Pointer_To_PageNumbers;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageNumbers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageNumbers;

   function Get_LinkToPrevious
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinkToPrevious
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinkToPrevious;

   procedure Put_LinkToPrevious
     (This : HeaderFooter_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LinkToPrevious
         (Pointer (This),
          prop));

   end Put_LinkToPrevious;

   function Get_Shapes
     (This : HeaderFooter_Type)
     return Pointer_To_Shapes
   is
       RetVal : aliased Pointer_To_Shapes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shapes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shapes;

end winword.HeaderFooter_Interface;

