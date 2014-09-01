with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Application_Interface is

   procedure Initialize (This : in out Application_Type) is
   begin
      Set_IID (This, IID_Application);
   end Initialize;

   function Pointer (This : Application_Type)
     return Pointer_To_Application
   is
   begin
      return To_Pointer_To_Application (Address (This));
   end Pointer;

   procedure Attach (This    : in out Application_Type;
                     Pointer : in     Pointer_To_Application)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Version
     (This         : Application_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Version
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Version;

end winword.Application_Interface;

