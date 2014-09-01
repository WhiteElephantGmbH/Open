with GNATCOM.Dispinterface;

package winword.TaskPane_Interface is

   type TaskPane_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TaskPane_Type);

   function Pointer (This : TaskPane_Type)
     return Pointer_To_TaskPane;

   procedure Attach (This    : in out TaskPane_Type;
                     Pointer : in     Pointer_To_TaskPane);

   function Get_Application
     (This : TaskPane_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TaskPane_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TaskPane_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Visible
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This : TaskPane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.TaskPane_Interface;

