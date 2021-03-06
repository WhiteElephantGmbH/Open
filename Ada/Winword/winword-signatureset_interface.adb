with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SignatureSet_Interface is

   procedure Initialize (This : in out SignatureSet_Type) is
   begin
      Set_IID (This, IID_SignatureSet);
   end Initialize;

   function Pointer (This : SignatureSet_Type)
     return Pointer_To_SignatureSet
   is
   begin
      return To_Pointer_To_SignatureSet (Address (This));
   end Pointer;

   procedure Attach (This    : in out SignatureSet_Type;
                     Pointer : in     Pointer_To_SignatureSet)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : SignatureSet_Type)
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
     (This      : SignatureSet_Type)
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

   function Getu_NewEnum
     (This    : SignatureSet_Type)
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

   function Get_Count
     (This  : SignatureSet_Type)
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

   function Get_Item
     (This    : SignatureSet_Type;
      iSig    : Interfaces.C.int)
     return Pointer_To_Signature
   is
       RetVal : aliased Pointer_To_Signature;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          iSig,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Add
     (This    : SignatureSet_Type)
     return Pointer_To_Signature
   is
       RetVal : aliased Pointer_To_Signature;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure Commit
     (This : SignatureSet_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Commit
         (Pointer (This)));

   end Commit;

   function Get_Parent
     (This    : SignatureSet_Type)
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

end winword.SignatureSet_Interface;

