package body winword.Browser_Object is

   function Get_Application
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Browser_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Browser_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Browser_Get_Parent);
   end Get_Parent;

   function Get_Target
     (This : Browser_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Browser_Get_Target);
   end Get_Target;

   procedure Put_Target
     (This : Browser_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Browser_Put_Target,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Target;

   procedure Next
     (This : Browser_Type)
   is
   begin
      Invoke (This, Browser_Next);
   end Next;

   procedure Previous
     (This : Browser_Type)
   is
   begin
      Invoke (This, Browser_Previous);
   end Previous;

end winword.Browser_Object;

