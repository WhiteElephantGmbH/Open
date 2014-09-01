with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.AutoCorrectEntries_Interface is

   procedure Initialize (This : in out AutoCorrectEntries_Type) is
   begin
      Set_IID (This, IID_AutoCorrectEntries);
   end Initialize;

   function Pointer (This : AutoCorrectEntries_Type)
     return Pointer_To_AutoCorrectEntries
   is
   begin
      return To_Pointer_To_AutoCorrectEntries (Address (This));
   end Pointer;

   procedure Attach (This    : in out AutoCorrectEntries_Type;
                     Pointer : in     Pointer_To_AutoCorrectEntries)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : AutoCorrectEntries_Type)
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
     (This : AutoCorrectEntries_Type)
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
     (This : AutoCorrectEntries_Type)
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
     (This : AutoCorrectEntries_Type)
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
     (This : AutoCorrectEntries_Type)
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

   function Item
     (This  : AutoCorrectEntries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_AutoCorrectEntry
   is
       RetVal : aliased Pointer_To_AutoCorrectEntry;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This  : AutoCorrectEntries_Type;
      Name  : GNATCOM.Types.BSTR;
      Value : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
     return Pointer_To_AutoCorrectEntry
   is
       RetVal : aliased Pointer_To_AutoCorrectEntry;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Name,
          Value,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
               GNATCOM.Interface.Free (Value);
      
      end if;

      return RetVal;
   end Add;

   function AddRichText
     (This   : AutoCorrectEntries_Type;
      Name   : GNATCOM.Types.BSTR;
      uRange : Pointer_To_uRange;
      Free   : Boolean := True)
     return Pointer_To_AutoCorrectEntry
   is
       RetVal : aliased Pointer_To_AutoCorrectEntry;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddRichText
         (Pointer (This),
          Name,
          uRange,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end AddRichText;

end winword.AutoCorrectEntries_Interface;

