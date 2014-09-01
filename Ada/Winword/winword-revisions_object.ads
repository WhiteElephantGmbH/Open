with GNATCOM.Dispinterface;

package winword.Revisions_Object is

   type Revisions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Revisions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Revisions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure AcceptAll
     (This : Revisions_Type);

   procedure RejectAll
     (This : Revisions_Type);

end winword.Revisions_Object;

