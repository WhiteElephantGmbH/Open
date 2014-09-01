with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.COMAddIns_Interface is

   procedure Initialize (This : in out COMAddIns_Type) is
   begin
      Set_IID (This, IID_COMAddIns);
   end Initialize;

   function Pointer (This : COMAddIns_Type)
     return Pointer_To_COMAddIns
   is
   begin
      return To_Pointer_To_COMAddIns (Address (This));
   end Pointer;

   procedure Attach (This    : in out COMAddIns_Type;
                     Pointer : in     Pointer_To_COMAddIns)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : COMAddIns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : COMAddIns_Type)
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

   function Item
     (This     : COMAddIns_Type;
      Index    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_COMAddIn
   is
       RetVal : aliased Pointer_To_COMAddIn;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Get_Count
     (This     : COMAddIns_Type)
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

   function Getu_NewEnum
     (This     : COMAddIns_Type)
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

   procedure Update
     (This : COMAddIns_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

   function Get_Parent
     (This    : COMAddIns_Type)
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

   procedure SetAppModal
     (This      : COMAddIns_Type;
      varfModal : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAppModal
         (Pointer (This),
          varfModal));

   end SetAppModal;

end winword.COMAddIns_Interface;

