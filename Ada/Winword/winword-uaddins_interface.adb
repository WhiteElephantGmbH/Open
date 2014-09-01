with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uAddIns_Interface is

   procedure Initialize (This : in out uAddIns_Type) is
   begin
      Set_IID (This, IID_uAddIns);
   end Initialize;

   function Pointer (This : uAddIns_Type)
     return Pointer_To_uAddIns
   is
   begin
      return To_Pointer_To_uAddIns (Address (This));
   end Pointer;

   procedure Attach (This    : in out uAddIns_Type;
                     Pointer : in     Pointer_To_uAddIns)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Item
     (This     : uAddIns_Type;
      index    : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return Pointer_To_AddIn
   is
       RetVal : aliased Pointer_To_AddIn;
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

   function Get_VBE
     (This   : uAddIns_Type)
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

   function Get_Parent
     (This   : uAddIns_Type)
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
     (This      : uAddIns_Type)
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
     (This        : uAddIns_Type)
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

   procedure Update
     (This : uAddIns_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

end winword.uAddIns_Interface;

