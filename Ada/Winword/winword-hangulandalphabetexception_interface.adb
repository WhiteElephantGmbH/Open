with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HangulAndAlphabetException_Interface is

   procedure Initialize (This : in out HangulAndAlphabetException_Type) is
   begin
      Set_IID (This, IID_HangulAndAlphabetException);
   end Initialize;

   function Pointer (This : HangulAndAlphabetException_Type)
     return Pointer_To_HangulAndAlphabetException
   is
   begin
      return To_Pointer_To_HangulAndAlphabetException (Address (This));
   end Pointer;

   procedure Attach (This    : in out HangulAndAlphabetException_Type;
                     Pointer : in     Pointer_To_HangulAndAlphabetException)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HangulAndAlphabetException_Type)
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
     (This : HangulAndAlphabetException_Type)
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
     (This : HangulAndAlphabetException_Type)
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

   function Get_Index
     (This : HangulAndAlphabetException_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_Name
     (This : HangulAndAlphabetException_Type)
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

   procedure Delete
     (This : HangulAndAlphabetException_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.HangulAndAlphabetException_Interface;

