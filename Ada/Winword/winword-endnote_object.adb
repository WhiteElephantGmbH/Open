package body winword.Endnote_Object is

   function Get_Application
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnote_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnote_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnote_Get_Parent);
   end Get_Parent;

   function Get_Range
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnote_Get_Range);
   end Get_Range;

   function Get_Reference
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnote_Get_Reference);
   end Get_Reference;

   function Get_Index
     (This : Endnote_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Endnote_Get_Index);
   end Get_Index;

   procedure Delete
     (This : Endnote_Type)
   is
   begin
      Invoke (This, Endnote_Delete);
   end Delete;

end winword.Endnote_Object;

