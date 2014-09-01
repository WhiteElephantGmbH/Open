with GNATCOM.Dispinterface;

package winword.Templates_Object is

   type Templates_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Templates_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Templates_Object;

