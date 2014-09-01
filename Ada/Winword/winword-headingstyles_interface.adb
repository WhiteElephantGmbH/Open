with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HeadingStyles_Interface is

   procedure Initialize (This : in out HeadingStyles_Type) is
   begin
      Set_IID (This, IID_HeadingStyles);
   end Initialize;

   function Pointer (This : HeadingStyles_Type)
     return Pointer_To_HeadingStyles
   is
   begin
      return To_Pointer_To_HeadingStyles (Address (This));
   end Pointer;

   procedure Attach (This    : in out HeadingStyles_Type;
                     Pointer : in     Pointer_To_HeadingStyles)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HeadingStyles_Type)
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
     (This : HeadingStyles_Type)
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
     (This : HeadingStyles_Type)
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
     (This : HeadingStyles_Type)
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
     (This : HeadingStyles_Type)
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
     (This  : HeadingStyles_Type;
      Index : Interfaces.C.long)
     return Pointer_To_HeadingStyle
   is
       RetVal : aliased Pointer_To_HeadingStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This  : HeadingStyles_Type;
      Style : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level : Interfaces.C.short)
     return Pointer_To_HeadingStyle
   is
       RetVal : aliased Pointer_To_HeadingStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Style,
          Level,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.HeadingStyles_Interface;

