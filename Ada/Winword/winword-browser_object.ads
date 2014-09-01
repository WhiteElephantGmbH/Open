with GNATCOM.Dispinterface;

package winword.Browser_Object is

   type Browser_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Target
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Target
     (This : Browser_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Next
     (This : Browser_Type);

   procedure Previous
     (This : Browser_Type);

end winword.Browser_Object;

