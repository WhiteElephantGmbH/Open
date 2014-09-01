with GNATCOM.Dispinterface;

package winword.Subdocuments_Interface is

   type Subdocuments_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Subdocuments_Type);

   function Pointer (This : Subdocuments_Type)
     return Pointer_To_Subdocuments;

   procedure Attach (This    : in out Subdocuments_Type;
                     Pointer : in     Pointer_To_Subdocuments);

   function Get_Application
     (This : Subdocuments_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Subdocuments_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Subdocuments_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Subdocuments_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : Subdocuments_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Expanded
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Expanded
     (This : Subdocuments_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Item
     (This  : Subdocuments_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Subdocument;

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
     return Pointer_To_Subdocument;

   function AddFromRange
     (This   : Subdocuments_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_Subdocument;

   procedure Merge
     (This             : Subdocuments_Type;
      FirstSubdocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LastSubdocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Delete
     (This : Subdocuments_Type);

   procedure uSelect
     (This : Subdocuments_Type);

end winword.Subdocuments_Interface;

