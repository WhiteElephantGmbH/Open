with GNATCOM.Dispinterface;

package winword.NewFile_Interface is

   type NewFile_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out NewFile_Type);

   function Pointer (This : NewFile_Type)
     return Pointer_To_NewFile;

   procedure Attach (This    : in out NewFile_Type;
                     Pointer : in     Pointer_To_NewFile);

   function Get_Application
     (This    : NewFile_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : NewFile_Type)
     return Interfaces.C.long;

   function Add
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.BSTR;
      Section     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

   function Remove
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.BSTR;
      Section     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

end winword.NewFile_Interface;

