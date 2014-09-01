with GNATCOM.Dispinterface;

package winword.AddIn_Object is

   type AddIn_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Description
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Description
     (This : AddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VBE
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Collection
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProgId
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Guid
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Connect
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Connect
     (This : AddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Object
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Object
     (This : AddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.AddIn_Object;

