with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ColorFormat_Interface is

   procedure Initialize (This : in out ColorFormat_Type) is
   begin
      Set_IID (This, IID_ColorFormat);
   end Initialize;

   function Pointer (This : ColorFormat_Type)
     return Pointer_To_ColorFormat
   is
   begin
      return To_Pointer_To_ColorFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out ColorFormat_Type;
                     Pointer : in     Pointer_To_ColorFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : ColorFormat_Type)
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
     (This : ColorFormat_Type)
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
     (This : ColorFormat_Type)
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

   function Get_RGB
     (This : ColorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RGB
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RGB;

   procedure Put_RGB
     (This : ColorFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RGB
         (Pointer (This),
          prop));

   end Put_RGB;

   function Get_SchemeColor
     (This : ColorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SchemeColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SchemeColor;

   procedure Put_SchemeColor
     (This : ColorFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SchemeColor
         (Pointer (This),
          prop));

   end Put_SchemeColor;

   function Get_Type
     (This : ColorFormat_Type)
     return MsoColorType
   is
       RetVal : aliased MsoColorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Name
     (This : ColorFormat_Type)
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
     (This : ColorFormat_Type;
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

   function Get_TintAndShade
     (This : ColorFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TintAndShade
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TintAndShade;

   procedure Put_TintAndShade
     (This : ColorFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TintAndShade
         (Pointer (This),
          prop));

   end Put_TintAndShade;

   function Get_OverPrint
     (This : ColorFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OverPrint
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OverPrint;

   procedure Put_OverPrint
     (This : ColorFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OverPrint
         (Pointer (This),
          prop));

   end Put_OverPrint;

   function Get_Ink
     (This  : ColorFormat_Type;
      Index : Interfaces.C.long)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Ink
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Ink;

   procedure Put_Ink
     (This  : ColorFormat_Type;
      Index : Interfaces.C.long;
      prop  : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Ink
         (Pointer (This),
          Index,
          prop));

   end Put_Ink;

   function Get_Cyan
     (This : ColorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Cyan
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Cyan;

   procedure Put_Cyan
     (This : ColorFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Cyan
         (Pointer (This),
          prop));

   end Put_Cyan;

   function Get_Magenta
     (This : ColorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Magenta
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Magenta;

   procedure Put_Magenta
     (This : ColorFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Magenta
         (Pointer (This),
          prop));

   end Put_Magenta;

   function Get_Yellow
     (This : ColorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Yellow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Yellow;

   procedure Put_Yellow
     (This : ColorFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Yellow
         (Pointer (This),
          prop));

   end Put_Yellow;

   function Get_Black
     (This : ColorFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Black
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Black;

   procedure Put_Black
     (This : ColorFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Black
         (Pointer (This),
          prop));

   end Put_Black;

   procedure SetCMYK
     (This    : ColorFormat_Type;
      Cyan    : Interfaces.C.long;
      Magenta : Interfaces.C.long;
      Yellow  : Interfaces.C.long;
      Black   : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetCMYK
         (Pointer (This),
          Cyan,
          Magenta,
          Yellow,
          Black));

   end SetCMYK;

end winword.ColorFormat_Interface;

