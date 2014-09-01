with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Diagram_Interface is

   procedure Initialize (This : in out Diagram_Type) is
   begin
      Set_IID (This, IID_Diagram);
   end Initialize;

   function Pointer (This : Diagram_Type)
     return Pointer_To_Diagram
   is
   begin
      return To_Pointer_To_Diagram (Address (This));
   end Pointer;

   procedure Attach (This    : in out Diagram_Type;
                     Pointer : in     Pointer_To_Diagram)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Diagram_Type)
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
     (This : Diagram_Type)
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
     (This : Diagram_Type)
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

   function Get_Nodes
     (This : Diagram_Type)
     return Pointer_To_DiagramNodes
   is
       RetVal : aliased Pointer_To_DiagramNodes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Nodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Nodes;

   function Get_Type
     (This : Diagram_Type)
     return MsoDiagramType
   is
       RetVal : aliased MsoDiagramType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_AutoLayout
     (This : Diagram_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoLayout
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoLayout;

   procedure Put_AutoLayout
     (This : Diagram_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoLayout
         (Pointer (This),
          prop));

   end Put_AutoLayout;

   function Get_Reverse
     (This : Diagram_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Reverse
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Reverse;

   procedure Put_Reverse
     (This : Diagram_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Reverse
         (Pointer (This),
          prop));

   end Put_Reverse;

   function Get_AutoFormat
     (This : Diagram_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormat;

   procedure Put_AutoFormat
     (This : Diagram_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormat
         (Pointer (This),
          prop));

   end Put_AutoFormat;

   procedure Convert
     (This  : Diagram_Type;
      uType : MsoDiagramType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Convert
         (Pointer (This),
          uType));

   end Convert;

end winword.Diagram_Interface;

