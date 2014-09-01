package body winword.TaskPanes_Object is

   function Getu_NewEnum
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPanes_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPanes_Get_Count);
   end Get_Count;

   function Get_Application
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPanes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPanes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TaskPanes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TaskPanes_Get_Parent);
   end Get_Parent;

   function Item
     (This  : TaskPanes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TaskPanes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.TaskPanes_Object;

