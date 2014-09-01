with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.IMsoDiagram_Interface is

   procedure Initialize (This : in out IMsoDiagram_Type) is
   begin
      Set_IID (This, IID_IMsoDiagram);
   end Initialize;

   function Pointer (This : IMsoDiagram_Type)
     return Pointer_To_IMsoDiagram
   is
   begin
      return To_Pointer_To_IMsoDiagram (Address (This));
   end Pointer;

   procedure Attach (This    : in out IMsoDiagram_Type;
                     Pointer : in     Pointer_To_IMsoDiagram)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : IMsoDiagram_Type)
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
     (This      : IMsoDiagram_Type)
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
     (This   : IMsoDiagram_Type)
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
     (This  : IMsoDiagram_Type)
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
     (This  : IMsoDiagram_Type)
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
     (This       : IMsoDiagram_Type)
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
     (This       : IMsoDiagram_Type;
      AutoLayout : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoLayout
         (Pointer (This),
          AutoLayout));

   end Put_AutoLayout;

   function Get_Reverse
     (This     : IMsoDiagram_Type)
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
     (This     : IMsoDiagram_Type;
      uReverse : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Reverse
         (Pointer (This),
          uReverse));

   end Put_Reverse;

   function Get_AutoFormat
     (This       : IMsoDiagram_Type)
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
     (This       : IMsoDiagram_Type;
      AutoFormat : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormat
         (Pointer (This),
          AutoFormat));

   end Put_AutoFormat;

   procedure Convert
     (This  : IMsoDiagram_Type;
      uType : MsoDiagramType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Convert
         (Pointer (This),
          uType));

   end Convert;

end winword.IMsoDiagram_Interface;

