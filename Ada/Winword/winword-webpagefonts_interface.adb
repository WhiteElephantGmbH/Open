with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.WebPageFonts_Interface is

   procedure Initialize (This : in out WebPageFonts_Type) is
   begin
      Set_IID (This, IID_WebPageFonts);
   end Initialize;

   function Pointer (This : WebPageFonts_Type)
     return Pointer_To_WebPageFonts
   is
   begin
      return To_Pointer_To_WebPageFonts (Address (This));
   end Pointer;

   procedure Attach (This    : in out WebPageFonts_Type;
                     Pointer : in     Pointer_To_WebPageFonts)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : WebPageFonts_Type)
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
     (This      : WebPageFonts_Type)
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

   function Get_Count
     (This  : WebPageFonts_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_Item
     (This  : WebPageFonts_Type;
      Index : MsoCharacterSet)
     return Pointer_To_WebPageFont
   is
       RetVal : aliased Pointer_To_WebPageFont;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Getu_NewEnum
     (This     : WebPageFonts_Type)
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

end winword.WebPageFonts_Interface;

