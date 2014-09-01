with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.AddIn_Interface is

   procedure Initialize (This : in out AddIn_Type) is
   begin
      Set_IID (This, IID_AddIn);
   end Initialize;

   function Pointer (This : AddIn_Type)
     return Pointer_To_AddIn
   is
   begin
      return To_Pointer_To_AddIn (Address (This));
   end Pointer;

   procedure Attach (This    : in out AddIn_Type;
                     Pointer : in     Pointer_To_AddIn)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Description
     (This   : AddIn_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Description
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Description;

   procedure Put_Description
     (This   : AddIn_Type;
      lpbstr : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Description
         (Pointer (This),
          lpbstr));

      if Free then
               GNATCOM.Interface.Free (lpbstr);
      
      end if;

   end Put_Description;

   function Get_VBE
     (This   : AddIn_Type)
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

   function Get_Collection
     (This      : AddIn_Type)
     return Pointer_To_uAddIns
   is
       RetVal : aliased Pointer_To_uAddIns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Collection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Collection;

   function Get_ProgId
     (This   : AddIn_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProgId
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProgId;

   function Get_Guid
     (This   : AddIn_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Guid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Guid;

   function Get_Connect
     (This       : AddIn_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Connect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Connect;

   procedure Put_Connect
     (This       : AddIn_Type;
      lpfConnect : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Connect
         (Pointer (This),
          lpfConnect));

   end Put_Connect;

   function Get_Object
     (This    : AddIn_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Object
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Object;

   procedure Put_Object
     (This    : AddIn_Type;
      lppdisp : GNATCOM.Types.Pointer_To_IDispatch)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Object
         (Pointer (This),
          lppdisp));

   end Put_Object;

end winword.AddIn_Interface;

