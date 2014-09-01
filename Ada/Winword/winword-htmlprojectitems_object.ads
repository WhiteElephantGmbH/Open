with GNATCOM.Dispinterface;

package winword.HTMLProjectItems_Object is

   type HTMLProjectItems_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : HTMLProjectItems_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT;

end winword.HTMLProjectItems_Object;

