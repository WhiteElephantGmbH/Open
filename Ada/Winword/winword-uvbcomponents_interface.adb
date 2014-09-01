with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uVBComponents_Interface is

   procedure Initialize (This : in out uVBComponents_Type) is
   begin
      Set_IID (This, IID_uVBComponents);
   end Initialize;

   function Pointer (This : uVBComponents_Type)
     return Pointer_To_uVBComponents
   is
   begin
      return To_Pointer_To_uVBComponents (Address (This));
   end Pointer;

   procedure Attach (This    : in out uVBComponents_Type;
                     Pointer : in     Pointer_To_uVBComponents)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Item
     (This       : uVBComponents_Type;
      index      : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
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

   function Get_Parent
     (This        : uVBComponents_Type)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Count
     (This      : uVBComponents_Type)
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
     (This        : uVBComponents_Type)
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

   procedure Remove
     (This        : uVBComponents_Type;
      VBComponent : Pointer_To_uVBComponent)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          VBComponent));

   end Remove;

   function Add
     (This          : uVBComponents_Type;
      ComponentType : vbext_ComponentType)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          ComponentType,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   function Import
     (This         : uVBComponents_Type;
      FileName     : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Import
         (Pointer (This),
          FileName,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

      return RetVal;
   end Import;

   function Get_VBE
     (This       : uVBComponents_Type)
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

   function AddCustom
     (This         : uVBComponents_Type;
      ProgId       : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddCustom
         (Pointer (This),
          ProgId,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (ProgId);
      
      end if;

      return RetVal;
   end AddCustom;

   function AddMTDesigner
     (This         : uVBComponents_Type;
      index        : Interfaces.C.long)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddMTDesigner
         (Pointer (This),
          index,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddMTDesigner;

end winword.uVBComponents_Interface;

