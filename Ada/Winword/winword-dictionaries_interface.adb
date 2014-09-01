with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Dictionaries_Interface is

   procedure Initialize (This : in out Dictionaries_Type) is
   begin
      Set_IID (This, IID_Dictionaries);
   end Initialize;

   function Pointer (This : Dictionaries_Type)
     return Pointer_To_Dictionaries
   is
   begin
      return To_Pointer_To_Dictionaries (Address (This));
   end Pointer;

   procedure Attach (This    : in out Dictionaries_Type;
                     Pointer : in     Pointer_To_Dictionaries)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type)
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
     (This : Dictionaries_Type;
      prop : Pointer_To_Dictionary)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActiveCustomDictionary
         (Pointer (This),
          prop));

   end Put_ActiveCustomDictionary;

   function Item
     (This  : Dictionaries_Type;
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
     (This     : Dictionaries_Type;
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
     (This : Dictionaries_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearAll
         (Pointer (This)));

   end ClearAll;

end winword.Dictionaries_Interface;

