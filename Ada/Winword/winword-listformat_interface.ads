with GNATCOM.Dispinterface;

package winword.ListFormat_Interface is

   type ListFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListFormat_Type);

   function Pointer (This : ListFormat_Type)
     return Pointer_To_ListFormat;

   procedure Attach (This    : in out ListFormat_Type;
                     Pointer : in     Pointer_To_ListFormat);

   function Get_ListLevelNumber
     (This : ListFormat_Type)
     return Interfaces.C.long;

   procedure Put_ListLevelNumber
     (This : ListFormat_Type;
      prop : Interfaces.C.long);

   function Get_List
     (This : ListFormat_Type)
     return Pointer_To_List;

   function Get_ListTemplate
     (This : ListFormat_Type)
     return Pointer_To_ListTemplate;

   function Get_ListValue
     (This : ListFormat_Type)
     return Interfaces.C.long;

   function Get_SingleList
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_SingleListTemplate
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_ListType
     (This : ListFormat_Type)
     return WdListType;

   function Get_ListString
     (This : ListFormat_Type)
     return GNATCOM.Types.BSTR;

   function Get_Application
     (This : ListFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function CanContinuePreviousList
     (This         : ListFormat_Type;
      ListTemplate : Pointer_To_ListTemplate)
     return WdContinue;

   procedure RemoveNumbers
     (This       : ListFormat_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ConvertNumbersToText
     (This       : ListFormat_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function CountNumberedItems
     (This       : ListFormat_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure ApplyBulletDefaultOld
     (This : ListFormat_Type);

   procedure ApplyNumberDefaultOld
     (This : ListFormat_Type);

   procedure ApplyOutlineNumberDefaultOld
     (This : ListFormat_Type);

   procedure ApplyListTemplateOld
     (This                 : ListFormat_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyTo              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ListOutdent
     (This : ListFormat_Type);

   procedure ListIndent
     (This : ListFormat_Type);

   procedure ApplyBulletDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ApplyNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ApplyOutlineNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ApplyListTemplate
     (This                 : ListFormat_Type;
      ListTemplate         : Pointer_To_ListTemplate;
      ContinuePreviousList : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyTo              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultListBehavior  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_ListPictureBullet
     (This : ListFormat_Type)
     return Pointer_To_InlineShape;

end winword.ListFormat_Interface;

