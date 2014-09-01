with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ShapeNodes_Interface is

   procedure Initialize (This : in out ShapeNodes_Type) is
   begin
      Set_IID (This, IID_ShapeNodes);
   end Initialize;

   function Pointer (This : ShapeNodes_Type)
     return Pointer_To_ShapeNodes
   is
   begin
      return To_Pointer_To_ShapeNodes (Address (This));
   end Pointer;

   procedure Attach (This    : in out ShapeNodes_Type;
                     Pointer : in     Pointer_To_ShapeNodes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ShapeNodes_Type)
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
     (This : ShapeNodes_Type)
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
     (This : ShapeNodes_Type)
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

   function Get_Count
     (This : ShapeNodes_Type)
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
     (This : ShapeNodes_Type)
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

   procedure Delete
     (This  : ShapeNodes_Type;
      Index : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          Index));

   end Delete;

   function Item
     (This  : ShapeNodes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ShapeNode
   is
       RetVal : aliased Pointer_To_ShapeNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   procedure SetEditingType
     (This        : ShapeNodes_Type;
      Index       : Interfaces.C.long;
      EditingType : MsoEditingType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetEditingType
         (Pointer (This),
          Index,
          EditingType));

   end SetEditingType;

   procedure SetPosition
     (This  : ShapeNodes_Type;
      Index : Interfaces.C.long;
      X1    : Interfaces.C.C_float;
      Y1    : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetPosition
         (Pointer (This),
          Index,
          X1,
          Y1));

   end SetPosition;

   procedure SetSegmentType
     (This        : ShapeNodes_Type;
      Index       : Interfaces.C.long;
      SegmentType : MsoSegmentType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetSegmentType
         (Pointer (This),
          Index,
          SegmentType));

   end SetSegmentType;

   procedure Insert
     (This        : ShapeNodes_Type;
      Index       : Interfaces.C.long;
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
        (Pointer (This).Vtbl.Insert
         (Pointer (This),
          Index,
          SegmentType,
          EditingType,
          X1,
          Y1,
          X2,
          Y2,
          X3,
          Y3));

   end Insert;

end winword.ShapeNodes_Interface;

