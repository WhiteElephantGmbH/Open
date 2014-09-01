with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Subdocuments_Interface is

   procedure Initialize (This : in out Subdocuments_Type) is
   begin
      Set_IID (This, IID_Subdocuments);
   end Initialize;

   function Pointer (This : Subdocuments_Type)
     return Pointer_To_Subdocuments
   is
   begin
      return To_Pointer_To_Subdocuments (Address (This));
   end Pointer;

   procedure Attach (This    : in out Subdocuments_Type;
                     Pointer : in     Pointer_To_Subdocuments)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Subdocuments_Type)
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
     (This : Subdocuments_Type)
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
     (This : Subdocuments_Type)
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

   function Get_Count
     (This : Subdocuments_Type)
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
     (This : Subdocuments_Type)
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

   function Get_Expanded
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Expanded
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Expanded;

   procedure Put_Expanded
     (This : Subdocuments_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Expanded
         (Pointer (This),
          prop));

   end Put_Expanded;

   function Item
     (This  : Subdocuments_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Subdocument
   is
       RetVal : aliased Pointer_To_Subdocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function AddFromFile
     (This                  : Subdocuments_Type;
      Name                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordTemplate      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Revert                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Subdocument
   is
       RetVal : aliased Pointer_To_Subdocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFromFile
         (Pointer (This),
          Name,
          ConfirmConversions,
          ReadOnly,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddFromFile;

   function AddFromRange
     (This   : Subdocuments_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_Subdocument
   is
       RetVal : aliased Pointer_To_Subdocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFromRange
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddFromRange;

   procedure Merge
     (This             : Subdocuments_Type;
      FirstSubdocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LastSubdocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Merge
         (Pointer (This),
          FirstSubdocument,
          LastSubdocument));

   end Merge;

   procedure Delete
     (This : Subdocuments_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure uSelect
     (This : Subdocuments_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

end winword.Subdocuments_Interface;

