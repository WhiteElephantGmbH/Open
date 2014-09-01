with GNATCOM.Dispinterface;

package winword.HTMLDivision_Object is

   type HTMLDivision_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LeftIndent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightIndent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightIndent
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBefore
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBefore
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfter
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfter
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HTMLDivisions
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT;

   function HTMLDivisionParent
     (This     : HTMLDivision_Type;
      LevelsUp : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : HTMLDivision_Type);

end winword.HTMLDivision_Object;

