with GNATCOM.Dispinterface;

package winword.Reviewer_Object is

   type Reviewer_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : Reviewer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Reviewer_Object;

