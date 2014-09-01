with GNATCOM.Dispinterface;

package winword.Documents_Object is

   type Documents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Documents_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Documents_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Close
     (This           : Documents_Type;
      SaveChanges    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True);

   function AddOld
     (This        : Documents_Type;
      Template    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NewTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   procedure Save
     (This           : Documents_Type;
      NoPrompt       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   procedure CheckOut
     (This     : Documents_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function CanCheckOut
     (This     : Documents_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

end winword.Documents_Object;

