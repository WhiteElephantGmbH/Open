package body winword.ListFormat_Object is

   function Get_ListLevelNumber
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_ListLevelNumber);
   end Get_ListLevelNumber;

   procedure Put_ListLevelNumber
     (This : ListFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListFormat_Put_ListLevelNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ListLevelNumber;

   function Get_List
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_List);
   end Get_List;

   function Get_ListTemplate
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_ListTemplate);
   end Get_ListTemplate;

   function Get_ListValue
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_ListValue);
   end Get_ListValue;

   function Get_SingleList
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_SingleList);
   end Get_SingleList;

   function Get_SingleListTemplate
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_SingleListTemplate);
   end Get_SingleListTemplate;

   function Get_ListType
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_ListType);
   end Get_ListType;

   function Get_ListString
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_ListString);
   end Get_ListString;

   function Get_Application
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_Parent);
   end Get_Parent;

   function CanContinuePreviousList
     (This         : ListFormat_Type;
      ListTemplate : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListFormat_CanContinuePreviousList,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ListTemplate),
         Free);
   end CanContinuePreviousList;

   procedure RemoveNumbers
     (This       : ListFormat_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_RemoveNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberType),
         Free);
   end RemoveNumbers;

   procedure ConvertNumbersToText
     (This       : ListFormat_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_ConvertNumbersToText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberType),
         Free);
   end ConvertNumbersToText;

   function CountNumberedItems
     (This       : ListFormat_Type;
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
         ListFormat_CountNumberedItems,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level,
          2 => NumberType),
         Free);
   end CountNumberedItems;

   procedure ApplyBulletDefaultOld
     (This : ListFormat_Type)
   is
   begin
      Invoke (This, ListFormat_ApplyBulletDefaultOld);
   end ApplyBulletDefaultOld;

   procedure ApplyNumberDefaultOld
     (This : ListFormat_Type)
   is
   begin
      Invoke (This, ListFormat_ApplyNumberDefaultOld);
   end ApplyNumberDefaultOld;

   procedure ApplyOutlineNumberDefaultOld
     (This : ListFormat_Type)
   is
   begin
      Invoke (This, ListFormat_ApplyOutlineNumberDefaultOld);
   end ApplyOutlineNumberDefaultOld;

   procedure ApplyListTemplateOld
     (This                 : ListFormat_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyTo              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_ApplyListTemplateOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ApplyTo,
          2 => ContinuePreviousList,
          3 => ListTemplate),
         Free);
   end ApplyListTemplateOld;

   procedure ListOutdent
     (This : ListFormat_Type)
   is
   begin
      Invoke (This, ListFormat_ListOutdent);
   end ListOutdent;

   procedure ListIndent
     (This : ListFormat_Type)
   is
   begin
      Invoke (This, ListFormat_ListIndent);
   end ListIndent;

   procedure ApplyBulletDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_ApplyBulletDefault,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultListBehavior),
         Free);
   end ApplyBulletDefault;

   procedure ApplyNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_ApplyNumberDefault,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultListBehavior),
         Free);
   end ApplyNumberDefault;

   procedure ApplyOutlineNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_ApplyOutlineNumberDefault,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultListBehavior),
         Free);
   end ApplyOutlineNumberDefault;

   procedure ApplyListTemplate
     (This                 : ListFormat_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyTo              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultListBehavior  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListFormat_ApplyListTemplate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultListBehavior,
          2 => ApplyTo,
          3 => ContinuePreviousList,
          4 => ListTemplate),
         Free);
   end ApplyListTemplate;

   function Get_ListPictureBullet
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListFormat_Get_ListPictureBullet);
   end Get_ListPictureBullet;

end winword.ListFormat_Object;

