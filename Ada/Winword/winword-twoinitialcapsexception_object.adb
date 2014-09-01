package body winword.TwoInitialCapsException_Object is

   function Get_Application
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsException_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsException_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsException_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsException_Get_Index);
   end Get_Index;

   function Get_Name
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TwoInitialCapsException_Get_Name);
   end Get_Name;

   procedure Delete
     (This : TwoInitialCapsException_Type)
   is
   begin
      Invoke (This, TwoInitialCapsException_Delete);
   end Delete;

end winword.TwoInitialCapsException_Object;

