with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.EmailAuthor_Interface is

   procedure Initialize (This : in out EmailAuthor_Type) is
   begin
      Set_IID (This, IID_EmailAuthor);
   end Initialize;

   function Pointer (This : EmailAuthor_Type)
     return Pointer_To_EmailAuthor
   is
   begin
      return To_Pointer_To_EmailAuthor (Address (This));
   end Pointer;

   procedure Attach (This    : in out EmailAuthor_Type;
                     Pointer : in     Pointer_To_EmailAuthor)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : EmailAuthor_Type)
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
     (This : EmailAuthor_Type)
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
     (This : EmailAuthor_Type)
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

   function Get_Style
     (This : EmailAuthor_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

end winword.EmailAuthor_Interface;

