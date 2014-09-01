package body winword.HangulAndAlphabetException_Object is

   function Get_Application
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetException_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetException_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetException_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetException_Get_Index);
   end Get_Index;

   function Get_Name
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HangulAndAlphabetException_Get_Name);
   end Get_Name;

   procedure Delete
     (This : HangulAndAlphabetException_Type)
   is
   begin
      Invoke (This, HangulAndAlphabetException_Delete);
   end Delete;

end winword.HangulAndAlphabetException_Object;

