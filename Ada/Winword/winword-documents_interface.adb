with GNATCOM.IInterface;

with GNATCOM.Errors;

package body winword.Documents_Interface is

   procedure Initialize (This : in out Documents_Type) is
   begin
      Set_IID (This, IID_Documents);
   end Initialize;

   function Pointer (This : Documents_Type)
     return Pointer_To_Documents
   is
   begin
      return To_Pointer_To_Documents (Address (This));
   end Pointer;

   procedure Attach (This    : in out Documents_Type;
                     Pointer : in     Pointer_To_Documents)
   is
   begin
      Attach (This, GNATCOM.IInterface.To_Pointer_To_IUnknown
              (Pointer.all'address));
   end Attach;

   function Getu_NewEnum
     (This : Documents_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : Documents_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Count;

   function Get_Application
     (This : Documents_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Documents_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Documents_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Parent;

   function Item
     (This  : Documents_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'unchecked_access));

      return RetVal;
   end Item;

   procedure Close
     (This           : Documents_Type;
      SaveChanges    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OriginalFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This),
          SaveChanges,
          OriginalFormat,
          RouteDocument));

   end Close;

   function AddOld
     (This        : Documents_Type;
      Template    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NewTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOld
         (Pointer (This),
          Template,
          NewTemplate,
          RetVal'unchecked_access));

      return RetVal;
   end AddOld;

   function OpenOld
     (This                  : Documents_Type;
      FileName              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
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
        GNATCOM.Types.PVARIANT_MISSING;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenOld
         (Pointer (This),
          FileName,
          ConfirmConversions,
          ReadOnly,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          Format,
          RetVal'unchecked_access));

      return RetVal;
   end OpenOld;

   procedure Save
     (This           : Documents_Type;
      NoPrompt       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OriginalFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Save
         (Pointer (This),
          NoPrompt,
          OriginalFormat));

   end Save;

   function Add
     (This         : Documents_Type;
      Template     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NewTemplate  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DocumentType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Visible      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Template,
          NewTemplate,
          DocumentType,
          Visible,
          RetVal'unchecked_access));

      return RetVal;
   end Add;

   function Open2000
     (This                  : Documents_Type;
      FileName              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
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
        GNATCOM.Types.PVARIANT_MISSING;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Encoding              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Visible               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open2000
         (Pointer (This),
          FileName,
          ConfirmConversions,
          ReadOnly,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          Format,
          Encoding,
          Visible,
          RetVal'unchecked_access));

      return RetVal;
   end Open2000;

   procedure CheckOut
     (This     : Documents_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckOut
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.IInterface.Free (FileName);

      end if;

   end CheckOut;

   function CanCheckOut
     (This     : Documents_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanCheckOut
         (Pointer (This),
          FileName,
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (FileName);

      end if;

      return RetVal;
   end CanCheckOut;

   function Open
     (This                  : Documents_Type;
      FileName              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
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
        GNATCOM.Types.PVARIANT_MISSING;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Encoding              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Visible               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OpenAndRepair         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DocumentDirection     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NoEncodingDialog      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This),
          FileName,
          ConfirmConversions,
          ReadOnly,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          Format,
          Encoding,
          Visible,
          OpenAndRepair,
          DocumentDirection,
          NoEncodingDialog,
          RetVal'unchecked_access));

      return RetVal;
   end Open;

end winword.Documents_Interface;

