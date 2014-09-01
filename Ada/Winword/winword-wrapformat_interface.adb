with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.WrapFormat_Interface is

   procedure Initialize (This : in out WrapFormat_Type) is
   begin
      Set_IID (This, IID_WrapFormat);
   end Initialize;

   function Pointer (This : WrapFormat_Type)
     return Pointer_To_WrapFormat
   is
   begin
      return To_Pointer_To_WrapFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out WrapFormat_Type;
                     Pointer : in     Pointer_To_WrapFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : WrapFormat_Type)
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
     (This : WrapFormat_Type)
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
     (This : WrapFormat_Type)
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

   function Get_Type
     (This : WrapFormat_Type)
     return WdWrapType
   is
       RetVal : aliased WdWrapType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : WrapFormat_Type;
      prop : WdWrapType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   function Get_Side
     (This : WrapFormat_Type)
     return WdWrapSideType
   is
       RetVal : aliased WdWrapSideType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Side
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Side;

   procedure Put_Side
     (This : WrapFormat_Type;
      prop : WdWrapSideType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Side
         (Pointer (This),
          prop));

   end Put_Side;

   function Get_DistanceTop
     (This : WrapFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceTop;

   procedure Put_DistanceTop
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceTop
         (Pointer (This),
          prop));

   end Put_DistanceTop;

   function Get_DistanceBottom
     (This : WrapFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceBottom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceBottom;

   procedure Put_DistanceBottom
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceBottom
         (Pointer (This),
          prop));

   end Put_DistanceBottom;

   function Get_DistanceLeft
     (This : WrapFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceLeft;

   procedure Put_DistanceLeft
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceLeft
         (Pointer (This),
          prop));

   end Put_DistanceLeft;

   function Get_DistanceRight
     (This : WrapFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceRight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceRight;

   procedure Put_DistanceRight
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceRight
         (Pointer (This),
          prop));

   end Put_DistanceRight;

   function Get_AllowOverlap
     (This : WrapFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowOverlap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowOverlap;

   procedure Put_AllowOverlap
     (This : WrapFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowOverlap
         (Pointer (This),
          prop));

   end Put_AllowOverlap;

end winword.WrapFormat_Interface;

