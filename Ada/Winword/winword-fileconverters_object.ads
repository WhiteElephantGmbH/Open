with GNATCOM.Dispinterface;

package winword.FileConverters_Object is

   type FileConverters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ConvertMacWordChevrons
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ConvertMacWordChevrons
     (This : FileConverters_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : FileConverters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FileConverters_Object;

