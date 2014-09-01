with GNATCOM.Dispinterface;

package winword.Languages_Object is

   type Languages_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Languages_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Languages_Object;

