with GNATCOM.Dispinterface;

package winword.Email_Object is

   type Email_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Email_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Email_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Email_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CurrentEmailAuthor
     (This : Email_Type)
     return GNATCOM.Types.VARIANT;

end winword.Email_Object;

