with GNATCOM.Dispinterface;

package winword.FontNames_Object is

   type FontNames_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : FontNames_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FontNames_Object;

