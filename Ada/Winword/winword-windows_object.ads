with GNATCOM.Dispinterface;

package winword.Windows_Object is

   type Windows_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Windows_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Windows_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : Windows_Type;
      Window : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Arrange
     (This         : Windows_Type;
      ArrangeStyle : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True);

end winword.Windows_Object;

