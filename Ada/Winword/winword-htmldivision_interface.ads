with GNATCOM.Dispinterface;

package winword.HTMLDivision_Interface is

   type HTMLDivision_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HTMLDivision_Type);

   function Pointer (This : HTMLDivision_Type)
     return Pointer_To_HTMLDivision;

   procedure Attach (This    : in out HTMLDivision_Type;
                     Pointer : in     Pointer_To_HTMLDivision);

   function Get_Application
     (This : HTMLDivision_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HTMLDivision_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Range
     (This : HTMLDivision_Type)
     return Pointer_To_uRange;

   function Get_Borders
     (This : HTMLDivision_Type)
     return Pointer_To_Borders;

   function Get_LeftIndent
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float);

   function Get_RightIndent
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float;

   procedure Put_RightIndent
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float);

   function Get_SpaceBefore
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceBefore
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float);

   function Get_SpaceAfter
     (This : HTMLDivision_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceAfter
     (This : HTMLDivision_Type;
      prop : Interfaces.C.C_float);

   function Get_HTMLDivisions
     (This : HTMLDivision_Type)
     return Pointer_To_HTMLDivisions;

   function HTMLDivisionParent
     (This     : HTMLDivision_Type;
      LevelsUp : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_HTMLDivision;

   procedure Delete
     (This : HTMLDivision_Type);

end winword.HTMLDivision_Interface;

