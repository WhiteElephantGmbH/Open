with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ShapeNode_Interface is

   procedure Initialize (This : in out ShapeNode_Type) is
   begin
      Set_IID (This, IID_ShapeNode);
   end Initialize;

   function Pointer (This : ShapeNode_Type)
     return Pointer_To_ShapeNode
   is
   begin
      return To_Pointer_To_ShapeNode (Address (This));
   end Pointer;

   procedure Attach (This    : in out ShapeNode_Type;
                     Pointer : in     Pointer_To_ShapeNode)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ShapeNode_Type)
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
     (This : ShapeNode_Type)
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
     (This : ShapeNode_Type)
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

   function Get_EditingType
     (This : ShapeNode_Type)
     return MsoEditingType
   is
       RetVal : aliased MsoEditingType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EditingType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EditingType;

   function Get_Points
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Points
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Points;

   function Get_SegmentType
     (This : ShapeNode_Type)
     return MsoSegmentType
   is
       RetVal : aliased MsoSegmentType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SegmentType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SegmentType;

end winword.ShapeNode_Interface;

