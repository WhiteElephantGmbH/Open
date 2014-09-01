with GNATCOM.Dispinterface;

package winword.List_Object is

   type List_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Range
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListParagraphs
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SingleListTemplate
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

   procedure ConvertNumbersToText
     (This       : List_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure RemoveNumbers
     (This       : List_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   function CountNumberedItems
     (This       : List_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Level      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ApplyListTemplateOld
     (This                 : List_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   function CanContinuePreviousList
     (This         : List_Type;
      ListTemplate : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ApplyListTemplate
     (This                 : List_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultListBehavior  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   function Get_StyleName
     (This : List_Type)
     return GNATCOM.Types.VARIANT;

end winword.List_Object;

