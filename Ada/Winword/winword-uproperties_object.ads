with GNATCOM.Dispinterface;

package winword.uProperties_Object is

   type uProperties_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Item
     (This  : uProperties_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uProperties_Type)
     return GNATCOM.Types.VARIANT;

end winword.uProperties_Object;

