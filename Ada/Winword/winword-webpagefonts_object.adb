package body winword.WebPageFonts_Object is

   function Get_Application
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFonts_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFonts_Get_Creator);
   end Get_Creator;

   function Get_Count
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFonts_Get_Count);
   end Get_Count;

   function Get_Item
     (This  : WebPageFonts_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         WebPageFonts_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Getu_NewEnum
     (This : WebPageFonts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFonts_Getu_NewEnum);
   end Getu_NewEnum;

end winword.WebPageFonts_Object;

