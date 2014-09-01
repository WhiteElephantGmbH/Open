package body winword.Documents_Object is

   function Getu_NewEnum
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Documents_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Documents_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Documents_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Documents_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Documents_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Documents_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure Close
     (This           : Documents_Type;
      SaveChanges    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         Documents_Close,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RouteDocument,
          2 => OriginalFormat,
          3 => SaveChanges),
         Free);
   end Close;

   function AddOld
     (This        : Documents_Type;
      Template    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NewTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_AddOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NewTemplate,
          2 => Template),
         Free);
   end AddOld;

   function OpenOld
     (This                  : Documents_Type;
      FileName              : GNATCOM.Types.VARIANT;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_OpenOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Format,
          2 => WritePasswordTemplate,
          3 => WritePasswordDocument,
          4 => Revert,
          5 => PasswordTemplate,
          6 => PasswordDocument,
          7 => AddToRecentFiles,
          8 => ReadOnly,
          9 => ConfirmConversions,
          10 => FileName),
         Free);
   end OpenOld;

   procedure Save
     (This           : Documents_Type;
      NoPrompt       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         Documents_Save,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => OriginalFormat,
          2 => NoPrompt),
         Free);
   end Save;

   function Add
     (This         : Documents_Type;
      Template     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NewTemplate  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DocumentType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Visible      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Visible,
          2 => DocumentType,
          3 => NewTemplate,
          4 => Template),
         Free);
   end Add;

   function Open2000
     (This                  : Documents_Type;
      FileName              : GNATCOM.Types.VARIANT;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Encoding              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Visible               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_Open2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Visible,
          2 => Encoding,
          3 => Format,
          4 => WritePasswordTemplate,
          5 => WritePasswordDocument,
          6 => Revert,
          7 => PasswordTemplate,
          8 => PasswordDocument,
          9 => AddToRecentFiles,
          10 => ReadOnly,
          11 => ConfirmConversions,
          12 => FileName),
         Free);
   end Open2000;

   procedure CheckOut
     (This     : Documents_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         Documents_CheckOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end CheckOut;

   function CanCheckOut
     (This     : Documents_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_CanCheckOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end CanCheckOut;

   function Open
     (This                  : Documents_Type;
      FileName              : GNATCOM.Types.VARIANT;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Encoding              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Visible               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OpenAndRepair         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DocumentDirection     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NoEncodingDialog      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Documents_Open,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NoEncodingDialog,
          2 => DocumentDirection,
          3 => OpenAndRepair,
          4 => Visible,
          5 => Encoding,
          6 => Format,
          7 => WritePasswordTemplate,
          8 => WritePasswordDocument,
          9 => Revert,
          10 => PasswordTemplate,
          11 => PasswordDocument,
          12 => AddToRecentFiles,
          13 => ReadOnly,
          14 => ConfirmConversions,
          15 => FileName),
         Free);
   end Open;

end winword.Documents_Object;

