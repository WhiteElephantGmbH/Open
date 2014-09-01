with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Version_Interface is

   procedure Initialize (This : in out Version_Type) is
   begin
      Set_IID (This, IID_Version);
   end Initialize;

   function Pointer (This : Version_Type)
     return Pointer_To_Version
   is
   begin
      return To_Pointer_To_Version (Address (This));
   end Pointer;

   procedure Attach (This    : in out Version_Type;
                     Pointer : in     Pointer_To_Version)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Version_Type)
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
     (This : Version_Type)
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
     (This : Version_Type)
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

   function Get_SavedBy
     (This : Version_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SavedBy
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SavedBy;

   function Get_Comment
     (This : Version_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Comment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Comment;

   function Get_Date
     (This : Version_Type)
     return GNATCOM.Types.DATE
   is
       RetVal : aliased GNATCOM.Types.DATE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Date
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Date;

   function Get_Index
     (This : Version_Type)
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

   procedure OpenOld
     (This : Version_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenOld
         (Pointer (This)));

   end OpenOld;

   procedure Delete
     (This : Version_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   function Open
     (This : Version_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Open;

end winword.Version_Interface;

