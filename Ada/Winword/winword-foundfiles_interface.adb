with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FoundFiles_Interface is

   procedure Initialize (This : in out FoundFiles_Type) is
   begin
      Set_IID (This, IID_FoundFiles);
   end Initialize;

   function Pointer (This : FoundFiles_Type)
     return Pointer_To_FoundFiles
   is
   begin
      return To_Pointer_To_FoundFiles (Address (This));
   end Pointer;

   procedure Attach (This    : in out FoundFiles_Type;
                     Pointer : in     Pointer_To_FoundFiles)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : FoundFiles_Type)
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
     (This      : FoundFiles_Type)
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
     (This      : FoundFiles_Type;
      Index     : Interfaces.C.int;
      lcid      : Interfaces.C.long)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          lcid,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Count
     (This : FoundFiles_Type)
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

   function Getu_NewEnum
     (This      : FoundFiles_Type)
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

end winword.FoundFiles_Interface;

