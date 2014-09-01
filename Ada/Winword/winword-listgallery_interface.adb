with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ListGallery_Interface is

   procedure Initialize (This : in out ListGallery_Type) is
   begin
      Set_IID (This, IID_ListGallery);
   end Initialize;

   function Pointer (This : ListGallery_Type)
     return Pointer_To_ListGallery
   is
   begin
      return To_Pointer_To_ListGallery (Address (This));
   end Pointer;

   procedure Attach (This    : in out ListGallery_Type;
                     Pointer : in     Pointer_To_ListGallery)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_ListTemplates
     (This : ListGallery_Type)
     return Pointer_To_ListTemplates
   is
       RetVal : aliased Pointer_To_ListTemplates;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListTemplates
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListTemplates;

   function Get_Application
     (This : ListGallery_Type)
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
     (This : ListGallery_Type)
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
     (This : ListGallery_Type)
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

   function Get_Modified
     (This  : ListGallery_Type;
      Index : Interfaces.C.long)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Modified
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Modified;

   procedure Reset
     (This  : ListGallery_Type;
      Index : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This),
          Index));

   end Reset;

end winword.ListGallery_Interface;

