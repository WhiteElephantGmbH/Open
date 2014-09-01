with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CommandBarControls_Interface is

   procedure Initialize (This : in out CommandBarControls_Type) is
   begin
      Set_IID (This, IID_CommandBarControls);
   end Initialize;

   function Pointer (This : CommandBarControls_Type)
     return Pointer_To_CommandBarControls
   is
   begin
      return To_Pointer_To_CommandBarControls (Address (This));
   end Pointer;

   procedure Attach (This    : in out CommandBarControls_Type;
                     Pointer : in     Pointer_To_CommandBarControls)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : CommandBarControls_Type)
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
     (This      : CommandBarControls_Type)
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

   function Add
     (This      : CommandBarControls_Type;
      uType     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Parameter : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Before    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uType,
          Id,
          Parameter,
          Before,
          Temporary,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (uType);
               GNATCOM.Interface.Free (Id);
               GNATCOM.Interface.Free (Parameter);
               GNATCOM.Interface.Free (Before);
               GNATCOM.Interface.Free (Temporary);
      
      end if;

      return RetVal;
   end Add;

   function Get_Count
     (This              : CommandBarControls_Type)
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

   function Get_Item
     (This  : CommandBarControls_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Index);
      
      end if;

      return RetVal;
   end Get_Item;

   function Getu_NewEnum
     (This    : CommandBarControls_Type)
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

   function Get_Parent
     (This : CommandBarControls_Type)
     return Pointer_To_CommandBar
   is
       RetVal : aliased Pointer_To_CommandBar;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

end winword.CommandBarControls_Interface;

