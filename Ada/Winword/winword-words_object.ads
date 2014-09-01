with GNATCOM.Dispinterface;

package winword.Words_Object is

   type Words_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Get_First
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Words_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Words_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Words_Object;

