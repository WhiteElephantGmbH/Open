package body winword.Version_Object is

   function Get_Application
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_Parent);
   end Get_Parent;

   function Get_SavedBy
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_SavedBy);
   end Get_SavedBy;

   function Get_Comment
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_Comment);
   end Get_Comment;

   function Get_Date
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_Date);
   end Get_Date;

   function Get_Index
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Version_Get_Index);
   end Get_Index;

   procedure OpenOld
     (This : Version_Type)
   is
   begin
      Invoke (This, Version_OpenOld);
   end OpenOld;

   procedure Delete
     (This : Version_Type)
   is
   begin
      Invoke (This, Version_Delete);
   end Delete;

   function Open
     (This : Version_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Version_Open);
   end Open;

end winword.Version_Object;

