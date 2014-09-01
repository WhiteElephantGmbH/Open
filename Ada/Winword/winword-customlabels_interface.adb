with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CustomLabels_Interface is

   procedure Initialize (This : in out CustomLabels_Type) is
   begin
      Set_IID (This, IID_CustomLabels);
   end Initialize;

   function Pointer (This : CustomLabels_Type)
     return Pointer_To_CustomLabels
   is
   begin
      return To_Pointer_To_CustomLabels (Address (This));
   end Pointer;

   procedure Attach (This    : in out CustomLabels_Type;
                     Pointer : in     Pointer_To_CustomLabels)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : CustomLabels_Type)
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
     (This : CustomLabels_Type)
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
     (This : CustomLabels_Type)
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

   function Getu_NewEnum
     (This : CustomLabels_Type)
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
     (This : CustomLabels_Type)
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

   function Item
     (This  : CustomLabels_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_CustomLabel
   is
       RetVal : aliased Pointer_To_CustomLabel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This      : CustomLabels_Type;
      Name      : GNATCOM.Types.BSTR;
      DotMatrix : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CustomLabel
   is
       RetVal : aliased Pointer_To_CustomLabel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Name,
          DotMatrix,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end Add;

end winword.CustomLabels_Interface;

