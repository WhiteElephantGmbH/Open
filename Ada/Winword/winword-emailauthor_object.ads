with GNATCOM.Dispinterface;

package winword.EmailAuthor_Object is

   type EmailAuthor_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Style
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT;

end winword.EmailAuthor_Object;

