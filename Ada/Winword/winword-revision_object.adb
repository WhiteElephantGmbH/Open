package body winword.Revision_Object is

   function Get_Application
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Parent);
   end Get_Parent;

   function Get_Author
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Author);
   end Get_Author;

   function Get_Date
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Date);
   end Get_Date;

   function Get_Range
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Range);
   end Get_Range;

   function Get_Type
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Type);
   end Get_Type;

   function Get_Index
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Index);
   end Get_Index;

   procedure uAccept
     (This : Revision_Type)
   is
   begin
      Invoke (This, Revision_uAccept);
   end uAccept;

   procedure Reject
     (This : Revision_Type)
   is
   begin
      Invoke (This, Revision_Reject);
   end Reject;

   function Get_Style
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_Style);
   end Get_Style;

   function Get_FormatDescription
     (This : Revision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Revision_Get_FormatDescription);
   end Get_FormatDescription;

end winword.Revision_Object;

