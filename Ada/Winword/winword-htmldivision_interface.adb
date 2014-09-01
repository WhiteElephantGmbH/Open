with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HTMLDivision_Interface is

   procedure Initialize (This : in out HTMLDivision_Type) is
   begin
      Set_IID (This, IID_HTMLDivision);
   end Initialize;

   function Pointer (This : HTMLDivision_Type)
     return Pointer_To_HTMLDivision
   is
   begin
      return To_Pointer_To_HTMLDivision (Address (This));
   end Pointer;

   procedure Attach (This    : in out HTMLDivision_Type;
                     Pointer : in     Pointer_To_HTMLDivision)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HTMLDivision_Type)
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
     (This : HTMLDivision_Type)
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
     (This : HTMLDivision_Type)
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
     (This : HTMLDivision_Type)
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

   function Get_Borders
     (This : HTMLDivision_Type)
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

   function Get_LeftIndent
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftIndent
         (Pointer (This),
          prop));

   end Put_LeftIndent;

   function Get_RightIndent
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightIndent;

   procedure Put_RightIndent
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightIndent
         (Pointer (This),
          prop));

   end Put_RightIndent;

   function Get_SpaceBefore
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceBefore
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceBefore;

   procedure Put_SpaceBefore
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceBefore
         (Pointer (This),
          prop));

   end Put_SpaceBefore;

   function Get_SpaceAfter
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceAfter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceAfter
         (Pointer (This),
          prop));

   end Put_SpaceAfter;

   function Get_HTMLDivisions
     (This : HTMLDivision_Type)
     return Pointer_To_HTMLDivisions
   is
       RetVal : aliased Pointer_To_HTMLDivisions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HTMLDivisions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HTMLDivisions;

   function HTMLDivisionParent
     (This     : HTMLDivision_Type;
      LevelsUp : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_HTMLDivision
   is
       RetVal : aliased Pointer_To_HTMLDivision;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.HTMLDivisionParent
         (Pointer (This),
          LevelsUp,
          RetVal'Unchecked_Access));

      return RetVal;
   end HTMLDivisionParent;

   procedure Delete
     (This : HTMLDivision_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.HTMLDivision_Interface;

