with GNATCOM.Dispinterface;

package winword.Section_Object is

   type Section_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Range
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PageSetup
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageSetup
     (This : Section_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Headers
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Footers
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProtectedForForms
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ProtectedForForms
     (This : Section_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Index
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Section_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Section_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Section_Object;

