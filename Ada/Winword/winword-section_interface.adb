with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Section_Interface is

   procedure Initialize (This : in out Section_Type) is
   begin
      Set_IID (This, IID_Section);
   end Initialize;

   function Pointer (This : Section_Type)
     return Pointer_To_Section
   is
   begin
      return To_Pointer_To_Section (Address (This));
   end Pointer;

   procedure Attach (This    : in out Section_Type;
                     Pointer : in     Pointer_To_Section)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Range
     (This : Section_Type)
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

   function Get_Application
     (This : Section_Type)
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
     (This : Section_Type)
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
     (This : Section_Type)
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

   function Get_PageSetup
     (This : Section_Type)
     return Pointer_To_PageSetup
   is
       RetVal : aliased Pointer_To_PageSetup;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageSetup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : Section_Type;
      prop : Pointer_To_PageSetup)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageSetup
         (Pointer (This),
          prop));

   end Put_PageSetup;

   function Get_Headers
     (This : Section_Type)
     return Pointer_To_HeadersFooters
   is
       RetVal : aliased Pointer_To_HeadersFooters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Headers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Headers;

   function Get_Footers
     (This : Section_Type)
     return Pointer_To_HeadersFooters
   is
       RetVal : aliased Pointer_To_HeadersFooters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Footers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Footers;

   function Get_ProtectedForForms
     (This : Section_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProtectedForForms
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProtectedForForms;

   procedure Put_ProtectedForForms
     (This : Section_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ProtectedForForms
         (Pointer (This),
          prop));

   end Put_ProtectedForForms;

   function Get_Index
     (This : Section_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_Borders
     (This : Section_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : Section_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

end winword.Section_Interface;

