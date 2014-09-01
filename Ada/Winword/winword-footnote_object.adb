package body winword.Footnote_Object is

   function Get_Application
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnote_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnote_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnote_Get_Parent);
   end Get_Parent;

   function Get_Range
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnote_Get_Range);
   end Get_Range;

   function Get_Reference
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnote_Get_Reference);
   end Get_Reference;

   function Get_Index
     (This : Footnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Footnote_Get_Index);
   end Get_Index;

   procedure Delete
     (This : Footnote_Type)
   is
   begin
      Invoke (This, Footnote_Delete);
   end Delete;

end winword.Footnote_Object;

