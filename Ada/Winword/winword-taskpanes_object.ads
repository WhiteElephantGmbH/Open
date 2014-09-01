with GNATCOM.Dispinterface;

package winword.TaskPanes_Object is

   type TaskPanes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : TaskPanes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.TaskPanes_Object;

