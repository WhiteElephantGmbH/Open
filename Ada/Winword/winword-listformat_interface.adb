with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ListFormat_Interface is

   procedure Initialize (This : in out ListFormat_Type) is
   begin
      Set_IID (This, IID_ListFormat);
   end Initialize;

   function Pointer (This : ListFormat_Type)
     return Pointer_To_ListFormat
   is
   begin
      return To_Pointer_To_ListFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out ListFormat_Type;
                     Pointer : in     Pointer_To_ListFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_ListLevelNumber
     (This : ListFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListLevelNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListLevelNumber;

   procedure Put_ListLevelNumber
     (This : ListFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ListLevelNumber
         (Pointer (This),
          prop));

   end Put_ListLevelNumber;

   function Get_List
     (This : ListFormat_Type)
     return Pointer_To_List
   is
       RetVal : aliased Pointer_To_List;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_List
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_List;

   function Get_ListTemplate
     (This : ListFormat_Type)
     return Pointer_To_ListTemplate
   is
       RetVal : aliased Pointer_To_ListTemplate;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListTemplate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListTemplate;

   function Get_ListValue
     (This : ListFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListValue
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListValue;

   function Get_SingleList
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SingleList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SingleList;

   function Get_SingleListTemplate
     (This : ListFormat_Type)
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

   function Get_ListType
     (This : ListFormat_Type)
     return WdListType
   is
       RetVal : aliased WdListType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListType;

   function Get_ListString
     (This : ListFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListString
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListString;

   function Get_Application
     (This : ListFormat_Type)
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
     (This : ListFormat_Type)
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
     (This : ListFormat_Type)
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

   function CanContinuePreviousList
     (This         : ListFormat_Type;
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

   procedure RemoveNumbers
     (This       : ListFormat_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RemoveNumbers
         (Pointer (This),
          NumberType));

   end RemoveNumbers;

   procedure ConvertNumbersToText
     (This       : ListFormat_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertNumbersToText
         (Pointer (This),
          NumberType));

   end ConvertNumbersToText;

   function CountNumberedItems
     (This       : ListFormat_Type;
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

   procedure ApplyBulletDefaultOld
     (This : ListFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyBulletDefaultOld
         (Pointer (This)));

   end ApplyBulletDefaultOld;

   procedure ApplyNumberDefaultOld
     (This : ListFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyNumberDefaultOld
         (Pointer (This)));

   end ApplyNumberDefaultOld;

   procedure ApplyOutlineNumberDefaultOld
     (This : ListFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyOutlineNumberDefaultOld
         (Pointer (This)));

   end ApplyOutlineNumberDefaultOld;

   procedure ApplyListTemplateOld
     (This                 : ListFormat_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyTo              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyListTemplateOld
         (Pointer (This),
          ListTemplate,
          ContinuePreviousList,
          ApplyTo));

   end ApplyListTemplateOld;

   procedure ListOutdent
     (This : ListFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ListOutdent
         (Pointer (This)));

   end ListOutdent;

   procedure ListIndent
     (This : ListFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ListIndent
         (Pointer (This)));

   end ListIndent;

   procedure ApplyBulletDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyBulletDefault
         (Pointer (This),
          DefaultListBehavior));

   end ApplyBulletDefault;

   procedure ApplyNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyNumberDefault
         (Pointer (This),
          DefaultListBehavior));

   end ApplyNumberDefault;

   procedure ApplyOutlineNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyOutlineNumberDefault
         (Pointer (This),
          DefaultListBehavior));

   end ApplyOutlineNumberDefault;

   procedure ApplyListTemplate
     (This                 : ListFormat_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyTo              : access GNATCOM.Types.VARIANT :=
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
          ApplyTo,
          DefaultListBehavior));

   end ApplyListTemplate;

   function Get_ListPictureBullet
     (This : ListFormat_Type)
     return Pointer_To_InlineShape
   is
       RetVal : aliased Pointer_To_InlineShape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListPictureBullet
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListPictureBullet;

end winword.ListFormat_Interface;

