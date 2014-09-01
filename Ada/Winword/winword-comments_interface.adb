with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Comments_Interface is

   procedure Initialize (This : in out Comments_Type) is
   begin
      Set_IID (This, IID_Comments);
   end Initialize;

   function Pointer (This : Comments_Type)
     return Pointer_To_Comments
   is
   begin
      return To_Pointer_To_Comments (Address (This));
   end Pointer;

   procedure Attach (This    : in out Comments_Type;
                     Pointer : in     Pointer_To_Comments)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Comments_Type)
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
     (This : Comments_Type)
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

   function Get_Application
     (This : Comments_Type)
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
     (This : Comments_Type)
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
     (This : Comments_Type)
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

   function Get_ShowBy
     (This : Comments_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowBy
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowBy;

   procedure Put_ShowBy
     (This : Comments_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowBy
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ShowBy;

   function Item
     (This  : Comments_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Comment
   is
       RetVal : aliased Pointer_To_Comment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This   : Comments_Type;
      uRange : Pointer_To_uRange;
      Text   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Comment
   is
       RetVal : aliased Pointer_To_Comment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          Text,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.Comments_Interface;

