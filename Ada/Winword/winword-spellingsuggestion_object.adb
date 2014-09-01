package body winword.SpellingSuggestion_Object is

   function Get_Application
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestion_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestion_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestion_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestion_Get_Name);
   end Get_Name;

end winword.SpellingSuggestion_Object;

