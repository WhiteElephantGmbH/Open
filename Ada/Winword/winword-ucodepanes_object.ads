with GNATCOM.Dispinterface;

package winword.uCodePanes_Object is

   type uCodePanes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Parent
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : uCodePanes_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Current
     (This : uCodePanes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Current
     (This : uCodePanes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uCodePanes_Object;

