with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Scripts_Interface is

   procedure Initialize (This : in out Scripts_Type) is
   begin
      Set_IID (This, IID_Scripts);
   end Initialize;

   function Pointer (This : Scripts_Type)
     return Pointer_To_Scripts
   is
   begin
      return To_Pointer_To_Scripts (Address (This));
   end Pointer;

   procedure Attach (This    : in out Scripts_Type;
                     Pointer : in     Pointer_To_Scripts)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : Scripts_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : Scripts_Type)
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
     (This   : Scripts_Type)
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

   function Get_Count
     (This  : Scripts_Type)
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

   function Getu_NewEnum
     (This     : Scripts_Type)
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

   function Item
     (This  : Scripts_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_Script
   is
       RetVal : aliased Pointer_To_Script;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Index);
      
      end if;

      return RetVal;
   end Item;

   function Add
     (This       : Scripts_Type;
      Anchor     : GNATCOM.Types.Pointer_To_IDispatch;
      Location   : MsoScriptLocation;
      Language   : MsoScriptLanguage;
      Id         : GNATCOM.Types.BSTR;
      Extended   : GNATCOM.Types.BSTR;
      ScriptText : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
     return Pointer_To_Script
   is
       RetVal : aliased Pointer_To_Script;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Anchor,
          Location,
          Language,
          Id,
          Extended,
          ScriptText,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Id);
               GNATCOM.Interface.Free (Extended);
               GNATCOM.Interface.Free (ScriptText);
      
      end if;

      return RetVal;
   end Add;

   procedure Delete
     (This : Scripts_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.Scripts_Interface;

