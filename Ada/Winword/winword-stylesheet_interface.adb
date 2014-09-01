with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.StyleSheet_Interface is

   procedure Initialize (This : in out StyleSheet_Type) is
   begin
      Set_IID (This, IID_StyleSheet);
   end Initialize;

   function Pointer (This : StyleSheet_Type)
     return Pointer_To_StyleSheet
   is
   begin
      return To_Pointer_To_StyleSheet (Address (This));
   end Pointer;

   procedure Attach (This    : in out StyleSheet_Type;
                     Pointer : in     Pointer_To_StyleSheet)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : StyleSheet_Type)
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
     (This : StyleSheet_Type)
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
     (This : StyleSheet_Type)
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

   function Get_FullName
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FullName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FullName;

   function Get_Index
     (This : StyleSheet_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_Name
     (This : StyleSheet_Type)
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

   function Get_Path
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Path;

   function Get_Type
     (This : StyleSheet_Type)
     return WdStyleSheetLinkType
   is
       RetVal : aliased WdStyleSheetLinkType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : StyleSheet_Type;
      prop : WdStyleSheetLinkType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   function Get_Title
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Title
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Title;

   procedure Put_Title
     (This : StyleSheet_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Title
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Title;

   procedure Move
     (This       : StyleSheet_Type;
      Precedence : WdStyleSheetPrecedence)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Move
         (Pointer (This),
          Precedence));

   end Move;

   procedure Delete
     (This : StyleSheet_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.StyleSheet_Interface;

