with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HangulHanjaConversionDictionaries_Interface is

   procedure Initialize (This : in out HangulHanjaConversionDictionaries_Type) is
   begin
      Set_IID (This, IID_HangulHanjaConversionDictionaries);
   end Initialize;

   function Pointer (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_HangulHanjaConversionDictionaries
   is
   begin
      return To_Pointer_To_HangulHanjaConversionDictionaries (Address (This));
   end Pointer;

   procedure Attach (This    : in out HangulHanjaConversionDictionaries_Type;
                     Pointer : in     Pointer_To_HangulHanjaConversionDictionaries)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HangulHanjaConversionDictionaries_Type)
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
     (This : HangulHanjaConversionDictionaries_Type)
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
     (This : HangulHanjaConversionDictionaries_Type)
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
     (This : HangulHanjaConversionDictionaries_Type)
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
     (This : HangulHanjaConversionDictionaries_Type)
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

   function Get_Maximum
     (This : HangulHanjaConversionDictionaries_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Maximum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Maximum;

   function Get_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveCustomDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveCustomDictionary;

   procedure Put_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type;
      prop : Pointer_To_Dictionary)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActiveCustomDictionary
         (Pointer (This),
          prop));

   end Put_ActiveCustomDictionary;

   function Get_BuiltinDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltinDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuiltinDictionary;

   function Item
     (This  : HangulHanjaConversionDictionaries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This     : HangulHanjaConversionDictionaries_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_Dictionary
   is
       RetVal : aliased Pointer_To_Dictionary;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          FileName,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

      return RetVal;
   end Add;

   procedure ClearAll
     (This : HangulHanjaConversionDictionaries_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearAll
         (Pointer (This)));

   end ClearAll;

end winword.HangulHanjaConversionDictionaries_Interface;

