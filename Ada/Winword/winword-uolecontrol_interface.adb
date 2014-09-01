with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uOLEControl_Interface is

   procedure Initialize (This : in out uOLEControl_Type) is
   begin
      Set_IID (This, IID_uOLEControl);
   end Initialize;

   function Pointer (This : uOLEControl_Type)
     return Pointer_To_uOLEControl
   is
   begin
      return To_Pointer_To_uOLEControl (Address (This));
   end Pointer;

   procedure Attach (This    : in out uOLEControl_Type;
                     Pointer : in     Pointer_To_uOLEControl)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Left
     (This : uOLEControl_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Left
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Left;

   procedure Put_Left
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          prop));

   end Put_Left;

   function Get_Top
     (This : uOLEControl_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Top
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Top;

   procedure Put_Top
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          prop));

   end Put_Top;

   function Get_Height
     (This : uOLEControl_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_Width
     (This : uOLEControl_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Name
     (This : uOLEControl_Type)
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
     (This : uOLEControl_Type;
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

   function Get_Automation
     (This : uOLEControl_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Automation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Automation;

   procedure uSelect
     (This : uOLEControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Copy
     (This : uOLEControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Cut
     (This : uOLEControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

   procedure Delete
     (This : uOLEControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure Activate
     (This : uOLEControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   function Get_AltHTML
     (This : uOLEControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AltHTML
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AltHTML;

   procedure Put_AltHTML
     (This : uOLEControl_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AltHTML
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_AltHTML;

end winword.uOLEControl_Interface;

