with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SearchScopes_Interface is

   procedure Initialize (This : in out SearchScopes_Type) is
   begin
      Set_IID (This, IID_SearchScopes);
   end Initialize;

   function Pointer (This : SearchScopes_Type)
     return Pointer_To_SearchScopes
   is
   begin
      return To_Pointer_To_SearchScopes (Address (This));
   end Pointer;

   procedure Attach (This    : in out SearchScopes_Type;
                     Pointer : in     Pointer_To_SearchScopes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : SearchScopes_Type)
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
     (This      : SearchScopes_Type)
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

   function Get_Item
     (This           : SearchScopes_Type;
      Index          : Interfaces.C.int)
     return Pointer_To_SearchScope
   is
       RetVal : aliased Pointer_To_SearchScope;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Count
     (This         : SearchScopes_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Getu_NewEnum
     (This      : SearchScopes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

end winword.SearchScopes_Interface;

