with GNATCOM.Dispinterface;

package winword.SpellingSuggestions_Interface is

   type SpellingSuggestions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SpellingSuggestions_Type);

   function Pointer (This : SpellingSuggestions_Type)
     return Pointer_To_SpellingSuggestions;

   procedure Attach (This    : in out SpellingSuggestions_Type;
                     Pointer : in     Pointer_To_SpellingSuggestions);

   function Get_Application
     (This : SpellingSuggestions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : SpellingSuggestions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : SpellingSuggestions_Type)
     return Interfaces.C.long;

   function Get_SpellingErrorType
     (This : SpellingSuggestions_Type)
     return WdSpellingErrorType;

   function Item
     (This  : SpellingSuggestions_Type;
      Index : Interfaces.C.long)
     return Pointer_To_SpellingSuggestion;

end winword.SpellingSuggestions_Interface;

