with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SpellingSuggestion_Interface is

   procedure Initialize (This : in out SpellingSuggestion_Type) is
   begin
      Set_IID (This, IID_SpellingSuggestion);
   end Initialize;

   function Pointer (This : SpellingSuggestion_Type)
     return Pointer_To_SpellingSuggestion
   is
   begin
      return To_Pointer_To_SpellingSuggestion (Address (This));
   end Pointer;

   procedure Attach (This    : in out SpellingSuggestion_Type;
                     Pointer : in     Pointer_To_SpellingSuggestion)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : SpellingSuggestion_Type)
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
     (This : SpellingSuggestion_Type)
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
     (This : SpellingSuggestion_Type)
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

   function Get_Name
     (This : SpellingSuggestion_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

end winword.SpellingSuggestion_Interface;

