with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.List_Interface is

   procedure Initialize (This : in out List_Type) is
   begin
      Set_IID (This, IID_List);
   end Initialize;

   function Pointer (This : List_Type)
     return Pointer_To_List
   is
   begin
      return To_Pointer_To_List (Address (This));
   end Pointer;

   procedure Attach (This    : in out List_Type;
                     Pointer : in     Pointer_To_List)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Range
     (This : List_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_ListParagraphs
     (This : List_Type)
     return Pointer_To_ListParagraphs
   is
       RetVal : aliased Pointer_To_ListParagraphs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListParagraphs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListParagraphs;

   function Get_SingleListTemplate
     (This : List_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SingleListTemplate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SingleListTemplate;

   function Get_Application
     (This : List_Type)
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
     (This : List_Type)
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
     (This : List_Type)
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

   procedure ConvertNumbersToText
     (This       : List_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertNumbersToText
         (Pointer (This),
          NumberType));

   end ConvertNumbersToText;

   procedure RemoveNumbers
     (This       : List_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RemoveNumbers
         (Pointer (This),
          NumberType));

   end RemoveNumbers;

   function CountNumberedItems
     (This       : List_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CountNumberedItems
         (Pointer (This),
          NumberType,
          Level,
          RetVal'Unchecked_Access));

      return RetVal;
   end CountNumberedItems;

   procedure ApplyListTemplateOld
     (This                 : List_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyListTemplateOld
         (Pointer (This),
          ListTemplate,
          ContinuePreviousList));

   end ApplyListTemplateOld;

   function CanContinuePreviousList
     (This         : List_Type;
      ListTemplate : Pointer_To_ListTemplate)
     return WdContinue
   is
       RetVal : aliased WdContinue;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanContinuePreviousList
         (Pointer (This),
          ListTemplate,
          RetVal'Unchecked_Access));

      return RetVal;
   end CanContinuePreviousList;

   procedure ApplyListTemplate
     (This                 : List_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultListBehavior  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyListTemplate
         (Pointer (This),
          ListTemplate,
          ContinuePreviousList,
          DefaultListBehavior));

   end ApplyListTemplate;

   function Get_StyleName
     (This : List_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StyleName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StyleName;

end winword.List_Interface;

