package body winword.Subdocuments_Object is

   function Get_Application
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocuments_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocuments_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocuments_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocuments_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocuments_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Expanded
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocuments_Get_Expanded);
   end Get_Expanded;

   procedure Put_Expanded
     (This : Subdocuments_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Subdocuments_Put_Expanded,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Expanded;

   function Item
     (This  : Subdocuments_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Subdocuments_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddFromFile
     (This                  : Subdocuments_Type;
      Name                  : GNATCOM.Types.VARIANT;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
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
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Subdocuments_AddFromFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => WritePasswordTemplate,
          2 => WritePasswordDocument,
          3 => Revert,
          4 => PasswordTemplate,
          5 => PasswordDocument,
          6 => ReadOnly,
          7 => ConfirmConversions,
          8 => Name),
         Free);
   end AddFromFile;

   function AddFromRange
     (This   : Subdocuments_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Subdocuments_AddFromRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end AddFromRange;

   procedure Merge
     (This             : Subdocuments_Type;
      FirstSubdocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LastSubdocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         Subdocuments_Merge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LastSubdocument,
          2 => FirstSubdocument),
         Free);
   end Merge;

   procedure Delete
     (This : Subdocuments_Type)
   is
   begin
      Invoke (This, Subdocuments_Delete);
   end Delete;

   procedure uSelect
     (This : Subdocuments_Type)
   is
   begin
      Invoke (This, Subdocuments_uSelect);
   end uSelect;

end winword.Subdocuments_Object;

