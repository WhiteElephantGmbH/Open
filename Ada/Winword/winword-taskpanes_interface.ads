with GNATCOM.Dispinterface;

package winword.TaskPanes_Interface is

   type TaskPanes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TaskPanes_Type);

   function Pointer (This : TaskPanes_Type)
     return Pointer_To_TaskPanes;

   procedure Attach (This    : in out TaskPanes_Type;
                     Pointer : in     Pointer_To_TaskPanes);

   function Getu_NewEnum
     (This : TaskPanes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TaskPanes_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : TaskPanes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TaskPanes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TaskPanes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : TaskPanes_Type;
      Index : WdTaskPanes)
     return Pointer_To_TaskPane;

end winword.TaskPanes_Interface;

