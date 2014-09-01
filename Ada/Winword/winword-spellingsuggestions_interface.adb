with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SpellingSuggestions_Interface is

   procedure Initialize (This : in out SpellingSuggestions_Type) is
   begin
      Set_IID (This, IID_SpellingSuggestions);
   end Initialize;

   function Pointer (This : SpellingSuggestions_Type)
     return Pointer_To_SpellingSuggestions
   is
   begin
      return To_Pointer_To_SpellingSuggestions (Address (This));
   end Pointer;

   procedure Attach (This    : in out SpellingSuggestions_Type;
                     Pointer : in     Pointer_To_SpellingSuggestions)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : SpellingSuggestions_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : SpellingSuggestions_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Getu_NewEnum
     (This : SpellingSuggestions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : SpellingSuggestions_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_SpellingErrorType
     (This : SpellingSuggestions_Type)
     return WdSpellingErrorType
   is
       RetVal : aliased WdSpellingErrorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpellingErrorType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpellingErrorType;

   function Item
     (This  : SpellingSuggestions_Type;
      Index : Interfaces.C.long)
     return Pointer_To_SpellingSuggestion
   is
       RetVal : aliased Pointer_To_SpellingSuggestion;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

end winword.SpellingSuggestions_Interface;

