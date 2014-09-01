with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uWindows_Interface is

   procedure Initialize (This : in out uWindows_Type) is
   begin
      Set_IID (This, IID_uWindows);
   end Initialize;

   function Pointer (This : uWindows_Type)
     return Pointer_To_uWindows
   is
   begin
      return To_Pointer_To_uWindows (Address (This));
   end Pointer;

   procedure Attach (This    : in out uWindows_Type;
                     Pointer : in     Pointer_To_uWindows)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_VBE
     (This       : uWindows_Type)
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
     (This        : uWindows_Type)
     return Pointer_To_Application
   is
       RetVal : aliased Pointer_To_Application;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Item
     (This       : uWindows_Type;
      index      : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
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
     (This      : uWindows_Type)
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
     (This        : uWindows_Type)
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

   function CreateToolWindow
     (This         : uWindows_Type;
      AddInInst    : Pointer_To_AddIn;
      ProgId       : GNATCOM.Types.BSTR;
      Caption      : GNATCOM.Types.BSTR;
      GuidPosition : GNATCOM.Types.BSTR;
      DocObj       : GNATCOM.Types.Pointer_To_Pointer_To_IDispatch;
      Free         : Boolean := True)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateToolWindow
         (Pointer (This),
          AddInInst,
          ProgId,
          Caption,
          GuidPosition,
          DocObj,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (ProgId);
               GNATCOM.Interface.Free (Caption);
               GNATCOM.Interface.Free (GuidPosition);
      
      end if;

      return RetVal;
   end CreateToolWindow;

end winword.uWindows_Interface;

