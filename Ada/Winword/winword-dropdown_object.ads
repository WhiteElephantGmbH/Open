with GNATCOM.Dispinterface;

package winword.DropDown_Object is

   type DropDown_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Valid
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Default
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Default
     (This : DropDown_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Value
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : DropDown_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ListEntries
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT;

end winword.DropDown_Object;

