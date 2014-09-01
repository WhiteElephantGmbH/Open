with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Comment_Interface is

   procedure Initialize (This : in out Comment_Type) is
   begin
      Set_IID (This, IID_Comment);
   end Initialize;

   function Pointer (This : Comment_Type)
     return Pointer_To_Comment
   is
   begin
      return To_Pointer_To_Comment (Address (This));
   end Pointer;

   procedure Attach (This    : in out Comment_Type;
                     Pointer : in     Pointer_To_Comment)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Comment_Type)
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
     (This : Comment_Type)
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
     (This : Comment_Type)
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

   function Get_Range
     (This : Comment_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Reference
     (This : Comment_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Reference
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Reference;

   function Get_Scope
     (This : Comment_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Scope
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Scope;

   function Get_Index
     (This : Comment_Type)
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

   function Get_Author
     (This : Comment_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Author
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Author;

   procedure Put_Author
     (This : Comment_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Author
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Author;

   function Get_Initial
     (This : Comment_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Initial
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Initial;

   procedure Put_Initial
     (This : Comment_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Initial
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Initial;

   function Get_ShowTip
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowTip
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowTip;

   procedure Put_ShowTip
     (This : Comment_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowTip
         (Pointer (This),
          prop));

   end Put_ShowTip;

   procedure Delete
     (This : Comment_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure Edit
     (This : Comment_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Edit
         (Pointer (This)));

   end Edit;

   function Get_Date
     (This : Comment_Type)
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

end winword.Comment_Interface;

