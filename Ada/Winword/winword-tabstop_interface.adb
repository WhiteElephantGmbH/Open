with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TabStop_Interface is

   procedure Initialize (This : in out TabStop_Type) is
   begin
      Set_IID (This, IID_TabStop);
   end Initialize;

   function Pointer (This : TabStop_Type)
     return Pointer_To_TabStop
   is
   begin
      return To_Pointer_To_TabStop (Address (This));
   end Pointer;

   procedure Attach (This    : in out TabStop_Type;
                     Pointer : in     Pointer_To_TabStop)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TabStop_Type)
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
     (This : TabStop_Type)
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
     (This : TabStop_Type)
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

   function Get_Alignment
     (This : TabStop_Type)
     return WdTabAlignment
   is
       RetVal : aliased WdTabAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : TabStop_Type;
      prop : WdTabAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_Leader
     (This : TabStop_Type)
     return WdTabLeader
   is
       RetVal : aliased WdTabLeader;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Leader
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Leader;

   procedure Put_Leader
     (This : TabStop_Type;
      prop : WdTabLeader)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Leader
         (Pointer (This),
          prop));

   end Put_Leader;

   function Get_Position
     (This : TabStop_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Position
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Position;

   procedure Put_Position
     (This : TabStop_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Position
         (Pointer (This),
          prop));

   end Put_Position;

   function Get_CustomTab
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomTab
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CustomTab;

   function Get_Next
     (This : TabStop_Type)
     return Pointer_To_TabStop
   is
       RetVal : aliased Pointer_To_TabStop;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : TabStop_Type)
     return Pointer_To_TabStop
   is
       RetVal : aliased Pointer_To_TabStop;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   procedure Clear
     (This : TabStop_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Clear
         (Pointer (This)));

   end Clear;

end winword.TabStop_Interface;

