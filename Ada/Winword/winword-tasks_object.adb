package body winword.Tasks_Object is

   function Get_Application
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tasks_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tasks_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tasks_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tasks_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Tasks_Get_Count);
   end Get_Count;

   function Item
     (This  : Tasks_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Tasks_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Exists
     (This : Tasks_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Tasks_Exists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Exists;

   procedure ExitWindows
     (This : Tasks_Type)
   is
   begin
      Invoke (This, Tasks_ExitWindows);
   end ExitWindows;

end winword.Tasks_Object;

