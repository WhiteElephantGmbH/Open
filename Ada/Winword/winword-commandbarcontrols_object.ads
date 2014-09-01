with GNATCOM.Dispinterface;

package winword.CommandBarControls_Object is

   type CommandBarControls_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT;

   function Add
     (This      : CommandBarControls_Type;
      uType     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Parameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Before    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : CommandBarControls_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CommandBarControls_Type)
     return GNATCOM.Types.VARIANT;

end winword.CommandBarControls_Object;

