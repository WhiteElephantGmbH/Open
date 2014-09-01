package body winword.CustomProperty_Object is

   function Get_Name
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperty_Get_Name);
   end Get_Name;

   function Get_Value
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperty_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : CustomProperty_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CustomProperty_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

   function Get_Application
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperty_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperty_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CustomProperty_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperty_Get_Parent);
   end Get_Parent;

   procedure Delete
     (This : CustomProperty_Type)
   is
   begin
      Invoke (This, CustomProperty_Delete);
   end Delete;

end winword.CustomProperty_Object;

