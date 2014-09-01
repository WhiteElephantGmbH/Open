with GNATCOM.Dispinterface;

package winword.SpellingSuggestions_Object is

   type SpellingSuggestions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SpellingErrorType
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : SpellingSuggestions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.SpellingSuggestions_Object;

