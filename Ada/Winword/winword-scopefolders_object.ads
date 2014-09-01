with GNATCOM.Dispinterface;

package winword.ScopeFolders_Object is

   type ScopeFolders_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : ScopeFolders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : ScopeFolders_Type)
     return GNATCOM.Types.VARIANT;

end winword.ScopeFolders_Object;

