with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.DropCap_Interface is

   procedure Initialize (This : in out DropCap_Type) is
   begin
      Set_IID (This, IID_DropCap);
   end Initialize;

   function Pointer (This : DropCap_Type)
     return Pointer_To_DropCap
   is
   begin
      return To_Pointer_To_DropCap (Address (This));
   end Pointer;

   procedure Attach (This    : in out DropCap_Type;
                     Pointer : in     Pointer_To_DropCap)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : DropCap_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : DropCap_Type)
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
     (This : DropCap_Type)
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

   function Get_Position
     (This : DropCap_Type)
     return WdDropPosition
   is
       RetVal : aliased WdDropPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Position
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Position;

   procedure Put_Position
     (This : DropCap_Type;
      prop : WdDropPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Position
         (Pointer (This),
          prop));

   end Put_Position;

   function Get_FontName
     (This : DropCap_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FontName;

   procedure Put_FontName
     (This : DropCap_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FontName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_FontName;

   function Get_LinesToDrop
     (This : DropCap_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinesToDrop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinesToDrop;

   procedure Put_LinesToDrop
     (This : DropCap_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LinesToDrop
         (Pointer (This),
          prop));

   end Put_LinesToDrop;

   function Get_DistanceFromText
     (This : DropCap_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFromText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFromText;

   procedure Put_DistanceFromText
     (This : DropCap_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFromText
         (Pointer (This),
          prop));

   end Put_DistanceFromText;

   procedure Clear
     (This : DropCap_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Clear
         (Pointer (This)));

   end Clear;

   procedure Enable
     (This : DropCap_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Enable
         (Pointer (This)));

   end Enable;

end winword.DropCap_Interface;

