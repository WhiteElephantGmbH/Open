with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.WebPageFont_Interface is

   procedure Initialize (This : in out WebPageFont_Type) is
   begin
      Set_IID (This, IID_WebPageFont);
   end Initialize;

   function Pointer (This : WebPageFont_Type)
     return Pointer_To_WebPageFont
   is
   begin
      return To_Pointer_To_WebPageFont (Address (This));
   end Pointer;

   procedure Attach (This    : in out WebPageFont_Type;
                     Pointer : in     Pointer_To_WebPageFont)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : WebPageFont_Type)
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
     (This      : WebPageFont_Type)
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

   function Get_ProportionalFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProportionalFont
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProportionalFont;

   procedure Put_ProportionalFont
     (This : WebPageFont_Type;
      pstr : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ProportionalFont
         (Pointer (This),
          pstr));

      if Free then
               GNATCOM.Interface.Free (pstr);
      
      end if;

   end Put_ProportionalFont;

   function Get_ProportionalFontSize
     (This : WebPageFont_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProportionalFontSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProportionalFontSize;

   procedure Put_ProportionalFontSize
     (This : WebPageFont_Type;
      pf   : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ProportionalFontSize
         (Pointer (This),
          pf));

   end Put_ProportionalFontSize;

   function Get_FixedWidthFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FixedWidthFont
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FixedWidthFont;

   procedure Put_FixedWidthFont
     (This : WebPageFont_Type;
      pstr : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FixedWidthFont
         (Pointer (This),
          pstr));

      if Free then
               GNATCOM.Interface.Free (pstr);
      
      end if;

   end Put_FixedWidthFont;

   function Get_FixedWidthFontSize
     (This : WebPageFont_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FixedWidthFontSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FixedWidthFontSize;

   procedure Put_FixedWidthFontSize
     (This : WebPageFont_Type;
      pf   : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FixedWidthFontSize
         (Pointer (This),
          pf));

   end Put_FixedWidthFontSize;

end winword.WebPageFont_Interface;

