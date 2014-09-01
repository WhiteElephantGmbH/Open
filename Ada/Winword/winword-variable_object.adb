package body winword.Variable_Object is

   function Get_Application
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variable_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variable_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variable_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variable_Get_Name);
   end Get_Name;

   function Get_Value
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variable_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : Variable_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Variable_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

   function Get_Index
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variable_Get_Index);
   end Get_Index;

   procedure Delete
     (This : Variable_Type)
   is
   begin
      Invoke (This, Variable_Delete);
   end Delete;

end winword.Variable_Object;

