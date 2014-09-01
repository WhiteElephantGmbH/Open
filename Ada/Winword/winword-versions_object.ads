with GNATCOM.Dispinterface;

package winword.Versions_Object is

   type Versions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoVersion
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoVersion
     (This : Versions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Versions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Save
     (This    : Versions_Type;
      Comment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

end winword.Versions_Object;

