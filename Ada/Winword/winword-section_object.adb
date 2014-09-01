package body winword.Section_Object is

   function Get_Range
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Range);
   end Get_Range;

   function Get_Application
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Parent);
   end Get_Parent;

   function Get_PageSetup
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_PageSetup);
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : Section_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Section_Put_PageSetup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageSetup;

   function Get_Headers
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Headers);
   end Get_Headers;

   function Get_Footers
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Footers);
   end Get_Footers;

   function Get_ProtectedForForms
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_ProtectedForForms);
   end Get_ProtectedForForms;

   procedure Put_ProtectedForForms
     (This : Section_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Section_Put_ProtectedForForms,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ProtectedForForms;

   function Get_Index
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Index);
   end Get_Index;

   function Get_Borders
     (This : Section_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Section_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Section_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Section_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

end winword.Section_Object;

