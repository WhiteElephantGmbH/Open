with GNATCOM.Dispinterface;

package winword.HeadingStyles_Object is

   type HeadingStyles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : HeadingStyles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : HeadingStyles_Type;
      Style : GNATCOM.Types.VARIANT;
      Level : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.HeadingStyles_Object;

