package body winword.Bookmark_Object is

   function Get_Name
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Name);
   end Get_Name;

   function Get_Range
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Range);
   end Get_Range;

   function Get_Empty
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Empty);
   end Get_Empty;

   function Get_Start
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Start);
   end Get_Start;

   procedure Put_Start
     (This : Bookmark_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Bookmark_Put_Start,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Start;

   function Get_End
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_End);
   end Get_End;

   procedure Put_End
     (This : Bookmark_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Bookmark_Put_End,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_End;

   function Get_Column
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Column);
   end Get_Column;

   function Get_StoryType
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_StoryType);
   end Get_StoryType;

   function Get_Application
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Bookmark_Get_Parent);
   end Get_Parent;

   procedure uSelect
     (This : Bookmark_Type)
   is
   begin
      Invoke (This, Bookmark_uSelect);
   end uSelect;

   procedure Delete
     (This : Bookmark_Type)
   is
   begin
      Invoke (This, Bookmark_Delete);
   end Delete;

   function Copy
     (This : Bookmark_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Bookmark_Copy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Copy;

end winword.Bookmark_Object;

