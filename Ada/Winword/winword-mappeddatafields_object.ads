with GNATCOM.Dispinterface;

package winword.MappedDataFields_Object is

   type MappedDataFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : MappedDataFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.MappedDataFields_Object;

