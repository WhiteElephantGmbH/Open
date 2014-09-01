with GNATCOM.Dispinterface;

package winword.Application_Object is

   type Application_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Version
     (This : Application_Type)
     return GNATCOM.Types.VARIANT;

end winword.Application_Object;

