with GNATCOM.Dispinterface;

package winword.Characters_Object is

   type Characters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_First
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Characters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Characters_Object;

