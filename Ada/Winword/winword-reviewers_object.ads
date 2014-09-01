with GNATCOM.Dispinterface;

package winword.Reviewers_Object is

   type Reviewers_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Reviewers_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Reviewers_Object;

