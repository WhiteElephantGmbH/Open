with GNATCOM.Dispinterface;

package winword.Dialogs_Object is

   type Dialogs_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Dialogs_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Dialogs_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Dialogs_Object;

