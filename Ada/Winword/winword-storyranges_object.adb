package body winword.StoryRanges_Object is

   function Getu_NewEnum
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StoryRanges_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StoryRanges_Get_Count);
   end Get_Count;

   function Get_Application
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StoryRanges_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StoryRanges_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StoryRanges_Get_Parent);
   end Get_Parent;

   function Item
     (This  : StoryRanges_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         StoryRanges_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.StoryRanges_Object;

