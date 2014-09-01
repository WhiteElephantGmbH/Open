package body winword.HeaderFooter_Object is

   function Get_Application
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Parent);
   end Get_Parent;

   function Get_Range
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Range);
   end Get_Range;

   function Get_Index
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Index);
   end Get_Index;

   function Get_IsHeader
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_IsHeader);
   end Get_IsHeader;

   function Get_Exists
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Exists);
   end Get_Exists;

   procedure Put_Exists
     (This : HeaderFooter_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HeaderFooter_Put_Exists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Exists;

   function Get_PageNumbers
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_PageNumbers);
   end Get_PageNumbers;

   function Get_LinkToPrevious
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_LinkToPrevious);
   end Get_LinkToPrevious;

   procedure Put_LinkToPrevious
     (This : HeaderFooter_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HeaderFooter_Put_LinkToPrevious,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LinkToPrevious;

   function Get_Shapes
     (This : HeaderFooter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeaderFooter_Get_Shapes);
   end Get_Shapes;

end winword.HeaderFooter_Object;

