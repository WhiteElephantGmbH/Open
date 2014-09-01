with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ListTemplate_Interface is

   procedure Initialize (This : in out ListTemplate_Type) is
   begin
      Set_IID (This, IID_ListTemplate);
   end Initialize;

   function Pointer (This : ListTemplate_Type)
     return Pointer_To_ListTemplate
   is
   begin
      return To_Pointer_To_ListTemplate (Address (This));
   end Pointer;

   procedure Attach (This    : in out ListTemplate_Type;
                     Pointer : in     Pointer_To_ListTemplate)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ListTemplate_Type)
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
     (This : ListTemplate_Type)
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
     (This : ListTemplate_Type)
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

   function Get_OutlineNumbered
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OutlineNumbered
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OutlineNumbered;

   procedure Put_OutlineNumbered
     (This : ListTemplate_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OutlineNumbered
         (Pointer (This),
          prop));

   end Put_OutlineNumbered;

   function Get_Name
     (This : ListTemplate_Type)
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

   procedure Put_Name
     (This : ListTemplate_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Name;

   function Get_ListLevels
     (This : ListTemplate_Type)
     return Pointer_To_ListLevels
   is
       RetVal : aliased Pointer_To_ListLevels;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListLevels
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListLevels;

   function Convert
     (This  : ListTemplate_Type;
      Level : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ListTemplate
   is
       RetVal : aliased Pointer_To_ListTemplate;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Convert
         (Pointer (This),
          Level,
          RetVal'Unchecked_Access));

      return RetVal;
   end Convert;

end winword.ListTemplate_Interface;

