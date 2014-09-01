with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Script_Interface is

   procedure Initialize (This : in out Script_Type) is
   begin
      Set_IID (This, IID_Script);
   end Initialize;

   function Pointer (This : Script_Type)
     return Pointer_To_Script
   is
   begin
      return To_Pointer_To_Script (Address (This));
   end Pointer;

   procedure Attach (This    : in out Script_Type;
                     Pointer : in     Pointer_To_Script)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : Script_Type)
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
     (This      : Script_Type)
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
     (This   : Script_Type)
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

   function Get_Extended
     (This     : Script_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Extended
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Extended;

   procedure Put_Extended
     (This     : Script_Type;
      Extended : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Extended
         (Pointer (This),
          Extended));

      if Free then
               GNATCOM.Interface.Free (Extended);
      
      end if;

   end Put_Extended;

   function Get_Id
     (This : Script_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Id
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Id;

   procedure Put_Id
     (This : Script_Type;
      Id   : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Id
         (Pointer (This),
          Id));

      if Free then
               GNATCOM.Interface.Free (Id);
      
      end if;

   end Put_Id;

   function Get_Language
     (This     : Script_Type)
     return MsoScriptLanguage
   is
       RetVal : aliased MsoScriptLanguage;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Language
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Language;

   procedure Put_Language
     (This     : Script_Type;
      Language : MsoScriptLanguage)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Language
         (Pointer (This),
          Language));

   end Put_Language;

   function Get_Location
     (This     : Script_Type)
     return MsoScriptLocation
   is
       RetVal : aliased MsoScriptLocation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Location
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Location;

   procedure Delete
     (This : Script_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   function Get_Shape
     (This   : Script_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shape;

   function Get_ScriptText
     (This   : Script_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScriptText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScriptText;

   procedure Put_ScriptText
     (This   : Script_Type;
      Script : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScriptText
         (Pointer (This),
          Script));

      if Free then
               GNATCOM.Interface.Free (Script);
      
      end if;

   end Put_ScriptText;

end winword.Script_Interface;

