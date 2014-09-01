with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Zoom_Interface is

   procedure Initialize (This : in out Zoom_Type) is
   begin
      Set_IID (This, IID_Zoom);
   end Initialize;

   function Pointer (This : Zoom_Type)
     return Pointer_To_Zoom
   is
   begin
      return To_Pointer_To_Zoom (Address (This));
   end Pointer;

   procedure Attach (This    : in out Zoom_Type;
                     Pointer : in     Pointer_To_Zoom)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Zoom_Type)
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
     (This : Zoom_Type)
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
     (This : Zoom_Type)
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

   function Get_Percentage
     (This : Zoom_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Percentage
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Percentage;

   procedure Put_Percentage
     (This : Zoom_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Percentage
         (Pointer (This),
          prop));

   end Put_Percentage;

   function Get_PageFit
     (This : Zoom_Type)
     return WdPageFit
   is
       RetVal : aliased WdPageFit;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageFit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageFit;

   procedure Put_PageFit
     (This : Zoom_Type;
      prop : WdPageFit)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageFit
         (Pointer (This),
          prop));

   end Put_PageFit;

   function Get_PageRows
     (This : Zoom_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageRows
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageRows;

   procedure Put_PageRows
     (This : Zoom_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageRows
         (Pointer (This),
          prop));

   end Put_PageRows;

   function Get_PageColumns
     (This : Zoom_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageColumns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageColumns;

   procedure Put_PageColumns
     (This : Zoom_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageColumns
         (Pointer (This),
          prop));

   end Put_PageColumns;

end winword.Zoom_Interface;

