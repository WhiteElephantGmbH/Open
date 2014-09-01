with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Sections_Interface is

   procedure Initialize (This : in out Sections_Type) is
   begin
      Set_IID (This, IID_Sections);
   end Initialize;

   function Pointer (This : Sections_Type)
     return Pointer_To_Sections
   is
   begin
      return To_Pointer_To_Sections (Address (This));
   end Pointer;

   procedure Attach (This    : in out Sections_Type;
                     Pointer : in     Pointer_To_Sections)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Sections_Type)
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
     (This : Sections_Type)
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

   function Get_First
     (This : Sections_Type)
     return Pointer_To_Section
   is
       RetVal : aliased Pointer_To_Section;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_First
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_First;

   function Get_Last
     (This : Sections_Type)
     return Pointer_To_Section
   is
       RetVal : aliased Pointer_To_Section;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Last
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Last;

   function Get_Application
     (This : Sections_Type)
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
     (This : Sections_Type)
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
     (This : Sections_Type)
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

   function Get_PageSetup
     (This : Sections_Type)
     return Pointer_To_PageSetup
   is
       RetVal : aliased Pointer_To_PageSetup;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageSetup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : Sections_Type;
      prop : Pointer_To_PageSetup)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageSetup
         (Pointer (This),
          prop));

   end Put_PageSetup;

   function Item
     (This  : Sections_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Section
   is
       RetVal : aliased Pointer_To_Section;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This   : Sections_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Start  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Section
   is
       RetVal : aliased Pointer_To_Section;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          Start,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.Sections_Interface;

