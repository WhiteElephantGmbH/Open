with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HeadingStyle_Interface is

   procedure Initialize (This : in out HeadingStyle_Type) is
   begin
      Set_IID (This, IID_HeadingStyle);
   end Initialize;

   function Pointer (This : HeadingStyle_Type)
     return Pointer_To_HeadingStyle
   is
   begin
      return To_Pointer_To_HeadingStyle (Address (This));
   end Pointer;

   procedure Attach (This    : in out HeadingStyle_Type;
                     Pointer : in     Pointer_To_HeadingStyle)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HeadingStyle_Type)
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
     (This : HeadingStyle_Type)
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
     (This : HeadingStyle_Type)
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

   function Get_Style
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

   procedure Put_Style
     (This : HeadingStyle_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_Level
     (This : HeadingStyle_Type)
     return Interfaces.C.short
   is
       RetVal : aliased Interfaces.C.short;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Level
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Level;

   procedure Put_Level
     (This : HeadingStyle_Type;
      prop : Interfaces.C.short)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Level
         (Pointer (This),
          prop));

   end Put_Level;

   procedure Delete
     (This : HeadingStyle_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.HeadingStyle_Interface;

