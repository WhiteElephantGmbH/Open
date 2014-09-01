package body winword.SpellingSuggestions_Object is

   function Get_Application
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestions_Get_Count);
   end Get_Count;

   function Get_SpellingErrorType
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SpellingSuggestions_Get_SpellingErrorType);
   end Get_SpellingErrorType;

   function Item
     (This  : SpellingSuggestions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         SpellingSuggestions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.SpellingSuggestions_Object;

