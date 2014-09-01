with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uProperties_Interface is

   procedure Initialize (This : in out uProperties_Type) is
   begin
      Set_IID (This, IID_uProperties);
   end Initialize;

   function Pointer (This : uProperties_Type)
     return Pointer_To_uProperties
   is
   begin
      return To_Pointer_To_uProperties (Address (This));
   end Pointer;

   procedure Attach (This    : in out uProperties_Type;
                     Pointer : in     Pointer_To_uProperties)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Item
     (This        : uProperties_Type;
      index       : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return Pointer_To_Property
   is
       RetVal : aliased Pointer_To_Property;
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

   function Get_Application
     (This       : uProperties_Type)
     return Pointer_To_Application
   is
       RetVal : aliased Pointer_To_Application;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Parent
     (This        : uProperties_Type)
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
     (This      : uProperties_Type)
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
     (This        : uProperties_Type)
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

   function Get_VBE
     (This       : uProperties_Type)
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

end winword.uProperties_Interface;

