with GNATCOM.Dispinterface;

package winword.TaskPane_Object is

   type TaskPane_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : TaskPane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TaskPane_Object;

