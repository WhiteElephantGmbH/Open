with GNATCOM.Dispinterface;

package winword.CustomProperties_Object is

   type CustomProperties_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : CustomProperties_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : CustomProperties_Type;
      Name  : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.CustomProperties_Object;

