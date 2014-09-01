with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SearchScope_Interface is

   procedure Initialize (This : in out SearchScope_Type) is
   begin
      Set_IID (This, IID_SearchScope);
   end Initialize;

   function Pointer (This : SearchScope_Type)
     return Pointer_To_SearchScope
   is
   begin
      return To_Pointer_To_SearchScope (Address (This));
   end Pointer;

   procedure Attach (This    : in out SearchScope_Type;
                     Pointer : in     Pointer_To_SearchScope)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : SearchScope_Type)
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
     (This      : SearchScope_Type)
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

   function Get_Type
     (This              : SearchScope_Type)
     return MsoSearchIn
   is
       RetVal : aliased MsoSearchIn;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_ScopeFolder
     (This           : SearchScope_Type)
     return Pointer_To_ScopeFolder
   is
       RetVal : aliased Pointer_To_ScopeFolder;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScopeFolder
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScopeFolder;

end winword.SearchScope_Interface;

