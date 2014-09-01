with GNATCOM.Dispinterface;

package winword.ListEntries_Object is

   type ListEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ListEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : ListEntries_Type;
      Name  : GNATCOM.Types.VARIANT;
      Index : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Clear
     (This : ListEntries_Type);

end winword.ListEntries_Object;

