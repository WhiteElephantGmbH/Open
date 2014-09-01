with GNATCOM.Dispinterface;

package winword.SpellingSuggestion_Object is

   type SpellingSuggestion_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.VARIANT;

end winword.SpellingSuggestion_Object;

