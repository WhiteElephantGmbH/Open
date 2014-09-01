package body winword.Reviewer_Object is

   function Get_Application
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewer_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewer_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewer_Get_Parent);
   end Get_Parent;

   function Get_Visible
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewer_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : Reviewer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Reviewer_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

end winword.Reviewer_Object;

