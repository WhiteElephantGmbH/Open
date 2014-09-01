with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Email_Interface is

   procedure Initialize (This : in out Email_Type) is
   begin
      Set_IID (This, IID_Email);
   end Initialize;

   function Pointer (This : Email_Type)
     return Pointer_To_Email
   is
   begin
      return To_Pointer_To_Email (Address (This));
   end Pointer;

   procedure Attach (This    : in out Email_Type;
                     Pointer : in     Pointer_To_Email)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Email_Type)
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
     (This : Email_Type)
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
     (This : Email_Type)
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

   function Get_CurrentEmailAuthor
     (This : Email_Type)
     return Pointer_To_EmailAuthor
   is
       RetVal : aliased Pointer_To_EmailAuthor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CurrentEmailAuthor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CurrentEmailAuthor;

end winword.Email_Interface;

