with GNATCOM.Dispinterface;

package winword.Application_Interface is

   type Application_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Application_Type);

   function Pointer (This : Application_Type)
     return Pointer_To_Application;

   procedure Attach (This    : in out Application_Type;
                     Pointer : in     Pointer_To_Application);

   function Get_Version
     (This         : Application_Type)
     return GNATCOM.Types.BSTR;

end winword.Application_Interface;

