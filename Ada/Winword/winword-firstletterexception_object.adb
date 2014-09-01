package body winword.FirstLetterException_Object is

   function Get_Application
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterException_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterException_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterException_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterException_Get_Index);
   end Get_Index;

   function Get_Name
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FirstLetterException_Get_Name);
   end Get_Name;

   procedure Delete
     (This : FirstLetterException_Type)
   is
   begin
      Invoke (This, FirstLetterException_Delete);
   end Delete;

end winword.FirstLetterException_Object;

