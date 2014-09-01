with GNATCOM.Dispinterface;

package winword.List_Interface is

   type List_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out List_Type);

   function Pointer (This : List_Type)
     return Pointer_To_List;

   procedure Attach (This    : in out List_Type;
                     Pointer : in     Pointer_To_List);

   function Get_Range
     (This : List_Type)
     return Pointer_To_uRange;

   function Get_ListParagraphs
     (This : List_Type)
     return Pointer_To_ListParagraphs;

   function Get_SingleListTemplate
     (This : List_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Application
     (This : List_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : List_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : List_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure ConvertNumbersToText
     (This       : List_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure RemoveNumbers
     (This       : List_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function CountNumberedItems
     (This       : List_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure ApplyListTemplateOld
     (This                 : List_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function CanContinuePreviousList
     (This         : List_Type;
      ListTemplate : Pointer_To_ListTemplate)
     return WdContinue;

   procedure ApplyListTemplate
     (This                 : List_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultListBehavior  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_StyleName
     (This : List_Type)
     return GNATCOM.Types.BSTR;

end winword.List_Interface;

