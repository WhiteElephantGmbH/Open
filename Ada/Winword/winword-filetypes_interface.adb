with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileTypes_Interface is

   procedure Initialize (This : in out FileTypes_Type) is
   begin
      Set_IID (This, IID_FileTypes);
   end Initialize;

   function Pointer (This : FileTypes_Type)
     return Pointer_To_FileTypes
   is
   begin
      return To_Pointer_To_FileTypes (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileTypes_Type;
                     Pointer : in     Pointer_To_FileTypes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : FileTypes_Type)
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
     (This      : FileTypes_Type)
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
     (This           : FileTypes_Type;
      Index          : Interfaces.C.int)
     return MsoFileType
   is
       RetVal : aliased MsoFileType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Count
     (This         : FileTypes_Type)
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

   procedure Add
     (This     : FileTypes_Type;
      FileType : MsoFileType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          FileType));

   end Add;

   procedure Remove
     (This  : FileTypes_Type;
      Index : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          Index));

   end Remove;

   function Getu_NewEnum
     (This      : FileTypes_Type)
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

end winword.FileTypes_Interface;

