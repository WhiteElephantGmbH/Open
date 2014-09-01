with GNATCOM.Dispinterface;

package winword.FileTypes_Object is

   type FileTypes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : FileTypes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Add
     (This     : FileTypes_Type;
      FileType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure Remove
     (This  : FileTypes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Getu_NewEnum
     (This : FileTypes_Type)
     return GNATCOM.Types.VARIANT;

end winword.FileTypes_Object;

