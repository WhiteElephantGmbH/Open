package body winword.TextRetrievalMode_Object is

   function Get_Application
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_Parent);
   end Get_Parent;

   function Get_ViewType
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_ViewType);
   end Get_ViewType;

   procedure Put_ViewType
     (This : TextRetrievalMode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextRetrievalMode_Put_ViewType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ViewType;

   function Get_Duplicate
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_Duplicate);
   end Get_Duplicate;

   function Get_IncludeHiddenText
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_IncludeHiddenText);
   end Get_IncludeHiddenText;

   procedure Put_IncludeHiddenText
     (This : TextRetrievalMode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextRetrievalMode_Put_IncludeHiddenText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeHiddenText;

   function Get_IncludeFieldCodes
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextRetrievalMode_Get_IncludeFieldCodes);
   end Get_IncludeFieldCodes;

   procedure Put_IncludeFieldCodes
     (This : TextRetrievalMode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextRetrievalMode_Put_IncludeFieldCodes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeFieldCodes;

end winword.TextRetrievalMode_Object;

