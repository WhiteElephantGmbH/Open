package body winword.TaskPane_Object is

   function Get_Application
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPane_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPane_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPane_Get_Parent);
   end Get_Parent;

   function Get_Visible
     (This : TaskPane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPane_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : TaskPane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TaskPane_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

end winword.TaskPane_Object;

