with GNATCOM.Dispinterface;

package winword.Tables_Object is

   type Tables_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Tables_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddOld
     (This       : Tables_Type;
      uRange     : GNATCOM.Types.VARIANT;
      NumRows    : GNATCOM.Types.VARIANT;
      NumColumns : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This                 : Tables_Type;
      uRange               : GNATCOM.Types.VARIANT;
      NumRows              : GNATCOM.Types.VARIANT;
      NumColumns           : GNATCOM.Types.VARIANT;
      DefaultTableBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoFitBehavior      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_NestingLevel
     (This : Tables_Type)
     return GNATCOM.Types.VARIANT;

end winword.Tables_Object;

