with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uCodePanes_Interface is

   procedure Initialize (This : in out uCodePanes_Type) is
   begin
      Set_IID (This, IID_uCodePanes);
   end Initialize;

   function Pointer (This : uCodePanes_Type)
     return Pointer_To_uCodePanes
   is
   begin
      return To_Pointer_To_uCodePanes (Address (This));
   end Pointer;

   procedure Attach (This    : in out uCodePanes_Type;
                     Pointer : in     Pointer_To_uCodePanes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Parent
     (This    : uCodePanes_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_VBE
     (This    : uCodePanes_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBE;

   function Item
     (This     : uCodePanes_Type;
      index    : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return Pointer_To_uCodePane
   is
       RetVal : aliased Pointer_To_uCodePane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          index,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (index);
      
      end if;

      return RetVal;
   end Item;

   function Get_Count
     (This  : uCodePanes_Type)
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

   function uNewEnum
     (This   : uCodePanes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uNewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end uNewEnum;

   function Get_Current
     (This     : uCodePanes_Type)
     return Pointer_To_uCodePane
   is
       RetVal : aliased Pointer_To_uCodePane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Current
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Current;

   procedure Put_Current
     (This     : uCodePanes_Type;
      CodePane : Pointer_To_uCodePane)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Current
         (Pointer (This),
          CodePane));

   end Put_Current;

end winword.uCodePanes_Interface;

