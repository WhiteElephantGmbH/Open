with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uReferences_Interface is

   procedure Initialize (This : in out uReferences_Type) is
   begin
      Set_IID (This, IID_uReferences);
   end Initialize;

   function Pointer (This : uReferences_Type)
     return Pointer_To_uReferences
   is
   begin
      return To_Pointer_To_uReferences (Address (This));
   end Pointer;

   procedure Attach (This    : in out uReferences_Type;
                     Pointer : in     Pointer_To_uReferences)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Parent
     (This    : uReferences_Type)
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

   function Get_VBE
     (This    : uReferences_Type)
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
     (This      : uReferences_Type;
      index     : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return Pointer_To_Reference
   is
       RetVal : aliased Pointer_To_Reference;
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
     (This  : uReferences_Type)
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
     (This   : uReferences_Type)
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

   function AddFromGuid
     (This      : uReferences_Type;
      Guid      : GNATCOM.Types.BSTR;
      Major     : Interfaces.C.long;
      Minor     : Interfaces.C.long;
      Free      : Boolean := True)
     return Pointer_To_Reference
   is
       RetVal : aliased Pointer_To_Reference;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFromGuid
         (Pointer (This),
          Guid,
          Major,
          Minor,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Guid);
      
      end if;

      return RetVal;
   end AddFromGuid;

   function AddFromFile
     (This      : uReferences_Type;
      FileName  : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
     return Pointer_To_Reference
   is
       RetVal : aliased Pointer_To_Reference;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFromFile
         (Pointer (This),
          FileName,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

      return RetVal;
   end AddFromFile;

   procedure Remove
     (This      : uReferences_Type;
      Reference : Pointer_To_Reference)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          Reference));

   end Remove;

end winword.uReferences_Interface;

