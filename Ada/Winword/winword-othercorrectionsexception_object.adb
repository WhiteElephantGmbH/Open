package body winword.OtherCorrectionsException_Object is

   function Get_Application
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsException_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsException_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsException_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsException_Get_Index);
   end Get_Index;

   function Get_Name
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OtherCorrectionsException_Get_Name);
   end Get_Name;

   procedure Delete
     (This : OtherCorrectionsException_Type)
   is
   begin
      Invoke (This, OtherCorrectionsException_Delete);
   end Delete;

end winword.OtherCorrectionsException_Object;

