with GNATCOM.Dispinterface;

package winword.Dialog_Object is

   type Dialog_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultTab
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTab
     (This : Dialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT;

   function Show
     (This    : Dialog_Type;
      TimeOut : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Display
     (This    : Dialog_Type;
      TimeOut : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Execute
     (This : Dialog_Type);

   procedure Update
     (This : Dialog_Type);

   function Get_CommandName
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT;

end winword.Dialog_Object;

