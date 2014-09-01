with GNATCOM.Dispinterface;

package winword.RecentFiles_Object is

   type RecentFiles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Maximum
     (This : RecentFiles_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Maximum
     (This : RecentFiles_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : RecentFiles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This     : RecentFiles_Type;
      Document : GNATCOM.Types.VARIANT;
      ReadOnly : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.RecentFiles_Object;

