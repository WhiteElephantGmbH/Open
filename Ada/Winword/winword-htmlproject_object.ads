with GNATCOM.Dispinterface;

package winword.HTMLProject_Object is

   type HTMLProject_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_State
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure RefreshProject
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure RefreshDocument
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   function Get_HTMLProjectItems
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT;

   procedure Open
     (This     : HTMLProject_Type;
      OpenKind : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

end winword.HTMLProject_Object;

