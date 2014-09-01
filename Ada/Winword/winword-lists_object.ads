with GNATCOM.Dispinterface;

package winword.Lists_Object is

   type Lists_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Lists_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Lists_Object;

