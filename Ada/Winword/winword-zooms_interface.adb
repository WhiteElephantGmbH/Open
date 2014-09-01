with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Zooms_Interface is

   procedure Initialize (This : in out Zooms_Type) is
   begin
      Set_IID (This, IID_Zooms);
   end Initialize;

   function Pointer (This : Zooms_Type)
     return Pointer_To_Zooms
   is
   begin
      return To_Pointer_To_Zooms (Address (This));
   end Pointer;

   procedure Attach (This    : in out Zooms_Type;
                     Pointer : in     Pointer_To_Zooms)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Zooms_Type)
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
     (This : Zooms_Type)
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
     (This : Zooms_Type)
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

   function Item
     (This  : Zooms_Type;
      Index : WdViewType)
     return Pointer_To_Zoom
   is
       RetVal : aliased Pointer_To_Zoom;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

end winword.Zooms_Interface;

