with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.COMAddIn_Interface is

   procedure Initialize (This : in out COMAddIn_Type) is
   begin
      Set_IID (This, IID_COMAddIn);
   end Initialize;

   function Pointer (This : COMAddIn_Type)
     return Pointer_To_COMAddIn
   is
   begin
      return To_Pointer_To_COMAddIn (Address (This));
   end Pointer;

   procedure Attach (This    : in out COMAddIn_Type;
                     Pointer : in     Pointer_To_COMAddIn)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : COMAddIn_Type)
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
     (This      : COMAddIn_Type)
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

   function Get_Description
     (This     : COMAddIn_Type)
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
     (This     : COMAddIn_Type;
      RetValue : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Description
         (Pointer (This),
          RetValue));

      if Free then
               GNATCOM.Interface.Free (RetValue);
      
      end if;

   end Put_Description;

   function Get_ProgId
     (This     : COMAddIn_Type)
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
     (This     : COMAddIn_Type)
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
     (This     : COMAddIn_Type)
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
     (This     : COMAddIn_Type;
      RetValue : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Connect
         (Pointer (This),
          RetValue));

   end Put_Connect;

   function Get_Object
     (This     : COMAddIn_Type)
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
     (This     : COMAddIn_Type;
      RetValue : GNATCOM.Types.Pointer_To_IDispatch)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Object
         (Pointer (This),
          RetValue));

   end Put_Object;

   function Get_Parent
     (This    : COMAddIn_Type)
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

end winword.COMAddIn_Interface;

