with GNATCOM.Dispinterface;

package winword.NewFile_Object is

   type NewFile_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : NewFile_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : NewFile_Type)
     return GNATCOM.Types.VARIANT;

   function Add
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.VARIANT;
      Section     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Remove
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.VARIANT;
      Section     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.NewFile_Object;

