package body winword.List_Object is

   function Get_Range
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_Range);
   end Get_Range;

   function Get_ListParagraphs
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_ListParagraphs);
   end Get_ListParagraphs;

   function Get_SingleListTemplate
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_SingleListTemplate);
   end Get_SingleListTemplate;

   function Get_Application
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_Parent);
   end Get_Parent;

   procedure ConvertNumbersToText
     (This       : List_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         List_ConvertNumbersToText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberType),
         Free);
   end ConvertNumbersToText;

   procedure RemoveNumbers
     (This       : List_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         List_RemoveNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberType),
         Free);
   end RemoveNumbers;

   function CountNumberedItems
     (This       : List_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Level      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         List_CountNumberedItems,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level,
          2 => NumberType),
         Free);
   end CountNumberedItems;

   procedure ApplyListTemplateOld
     (This                 : List_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         List_ApplyListTemplateOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ContinuePreviousList,
          2 => ListTemplate),
         Free);
   end ApplyListTemplateOld;

   function CanContinuePreviousList
     (This         : List_Type;
      ListTemplate : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         List_CanContinuePreviousList,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ListTemplate),
         Free);
   end CanContinuePreviousList;

   procedure ApplyListTemplate
     (This                 : List_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultListBehavior  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         List_ApplyListTemplate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultListBehavior,
          2 => ContinuePreviousList,
          3 => ListTemplate),
         Free);
   end ApplyListTemplate;

   function Get_StyleName
     (This : List_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, List_Get_StyleName);
   end Get_StyleName;

end winword.List_Object;

