with GNATCOM.Dispinterface;

package winword.Sections_Object is

   type Sections_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_First
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PageSetup
     (This : Sections_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageSetup
     (This : Sections_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Sections_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : Sections_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Start  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Sections_Object;

