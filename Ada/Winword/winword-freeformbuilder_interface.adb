with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FreeformBuilder_Interface is

   procedure Initialize (This : in out FreeformBuilder_Type) is
   begin
      Set_IID (This, IID_FreeformBuilder);
   end Initialize;

   function Pointer (This : FreeformBuilder_Type)
     return Pointer_To_FreeformBuilder
   is
   begin
      return To_Pointer_To_FreeformBuilder (Address (This));
   end Pointer;

   procedure Attach (This    : in out FreeformBuilder_Type;
                     Pointer : in     Pointer_To_FreeformBuilder)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : FreeformBuilder_Type)
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
     (This : FreeformBuilder_Type)
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
     (This : FreeformBuilder_Type)
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

   procedure AddNodes
     (This        : FreeformBuilder_Type;
      SegmentType : MsoSegmentType;
      EditingType : MsoEditingType;
      X1          : Interfaces.C.C_float;
      Y1          : Interfaces.C.C_float;
      X2          : Interfaces.C.C_float;
      Y2          : Interfaces.C.C_float;
      X3          : Interfaces.C.C_float;
      Y3          : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddNodes
         (Pointer (This),
          SegmentType,
          EditingType,
          X1,
          Y1,
          X2,
          Y2,
          X3,
          Y3));

   end AddNodes;

   function ConvertToShape
     (This   : FreeformBuilder_Type;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToShape
         (Pointer (This),
          Anchor,
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToShape;

end winword.FreeformBuilder_Interface;

