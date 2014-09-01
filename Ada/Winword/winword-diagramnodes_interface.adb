with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.DiagramNodes_Interface is

   procedure Initialize (This : in out DiagramNodes_Type) is
   begin
      Set_IID (This, IID_DiagramNodes);
   end Initialize;

   function Pointer (This : DiagramNodes_Type)
     return Pointer_To_DiagramNodes
   is
   begin
      return To_Pointer_To_DiagramNodes (Address (This));
   end Pointer;

   procedure Attach (This    : in out DiagramNodes_Type;
                     Pointer : in     Pointer_To_DiagramNodes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : DiagramNodes_Type)
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
     (This      : DiagramNodes_Type)
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

   function Getu_NewEnum
     (This      : DiagramNodes_Type)
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

   function Item
     (This  : DiagramNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Index);
      
      end if;

      return RetVal;
   end Item;

   procedure SelectAll
     (This : DiagramNodes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectAll
         (Pointer (This)));

   end SelectAll;

   function Get_Parent
     (This   : DiagramNodes_Type)
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
     (This          : DiagramNodes_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

end winword.DiagramNodes_Interface;

