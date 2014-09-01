with GNATCOM.Dispinterface;

package winword.SpellingSuggestion_Interface is

   type SpellingSuggestion_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SpellingSuggestion_Type);

   function Pointer (This : SpellingSuggestion_Type)
     return Pointer_To_SpellingSuggestion;

   procedure Attach (This    : in out SpellingSuggestion_Type;
                     Pointer : in     Pointer_To_SpellingSuggestion);

   function Get_Application
     (This : SpellingSuggestion_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : SpellingSuggestion_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.BSTR;

end winword.SpellingSuggestion_Interface;

