with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uVBProjects_Interface is

   procedure Initialize (This : in out uVBProjects_Type) is
   begin
      Set_IID (This, IID_uVBProjects);
   end Initialize;

   function Pointer (This : uVBProjects_Type)
     return Pointer_To_uVBProjects
   is
   begin
      return To_Pointer_To_uVBProjects (Address (This));
   end Pointer;

   procedure Attach (This    : in out uVBProjects_Type;
                     Pointer : in     Pointer_To_uVBProjects)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Item
     (This       : uVBProjects_Type;
      index      : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
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
     (This       : uVBProjects_Type)
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
     (This       : uVBProjects_Type)
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

   function Get_Count
     (This      : uVBProjects_Type)
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
     (This        : uVBProjects_Type)
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

   function Add
     (This       : uVBProjects_Type;
      uType      : vbext_ProjectType)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uType,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure Remove
     (This : uVBProjects_Type;
      lpc  : Pointer_To_uVBProject)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          lpc));

   end Remove;

   function Open
     (This     : uVBProjects_Type;
      bstrPath : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This),
          bstrPath,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (bstrPath);
      
      end if;

      return RetVal;
   end Open;

end winword.uVBProjects_Interface;

