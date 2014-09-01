with GNATCOM.Dispinterface;

package winword.Subdocuments_Object is

   type Subdocuments_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Expanded
     (This : Subdocuments_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Expanded
     (This : Subdocuments_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Subdocuments_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   function AddFromRange
     (This   : Subdocuments_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Merge
     (This             : Subdocuments_Type;
      FirstSubdocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LastSubdocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True);

   procedure Delete
     (This : Subdocuments_Type);

   procedure uSelect
     (This : Subdocuments_Type);

end winword.Subdocuments_Object;

