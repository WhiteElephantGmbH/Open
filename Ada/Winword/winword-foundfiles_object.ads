with GNATCOM.Dispinterface;

package winword.FoundFiles_Object is

   type FoundFiles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : FoundFiles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : FoundFiles_Type)
     return GNATCOM.Types.VARIANT;

end winword.FoundFiles_Object;

