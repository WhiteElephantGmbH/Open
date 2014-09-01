with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ScopeFolder_Interface is

   procedure Initialize (This : in out ScopeFolder_Type) is
   begin
      Set_IID (This, IID_ScopeFolder);
   end Initialize;

   function Pointer (This : ScopeFolder_Type)
     return Pointer_To_ScopeFolder
   is
   begin
      return To_Pointer_To_ScopeFolder (Address (This));
   end Pointer;

   procedure Attach (This    : in out ScopeFolder_Type;
                     Pointer : in     Pointer_To_ScopeFolder)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : ScopeFolder_Type)
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
     (This      : ScopeFolder_Type)
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

   function Get_Name
     (This      : ScopeFolder_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_Path
     (This      : ScopeFolder_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Path;

   function Get_ScopeFolders
     (This            : ScopeFolder_Type)
     return Pointer_To_ScopeFolders
   is
       RetVal : aliased Pointer_To_ScopeFolders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScopeFolders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScopeFolders;

   procedure AddToSearchFolders
     (This : ScopeFolder_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddToSearchFolders
         (Pointer (This)));

   end AddToSearchFolders;

end winword.ScopeFolder_Interface;

