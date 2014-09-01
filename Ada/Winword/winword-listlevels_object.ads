with GNATCOM.Dispinterface;

package winword.ListLevels_Object is

   type ListLevels_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ListLevels_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ListLevels_Object;

