with GNATCOM.Dispinterface;

package winword.CheckBox_Object is

   type CheckBox_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Valid
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoSize
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoSize
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Size
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Size
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Default
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Default
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Value
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.CheckBox_Object;

