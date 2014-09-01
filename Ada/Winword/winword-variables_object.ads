with GNATCOM.Dispinterface;

package winword.Variables_Object is

   type Variables_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Variables_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : Variables_Type;
      Name  : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Variables_Object;

