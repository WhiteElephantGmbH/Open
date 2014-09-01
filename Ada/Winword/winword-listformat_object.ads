with GNATCOM.Dispinterface;

package winword.ListFormat_Object is

   type ListFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_ListLevelNumber
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ListLevelNumber
     (This : ListFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_List
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListTemplate
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListValue
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SingleList
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SingleListTemplate
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListType
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListString
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

   function CanContinuePreviousList
     (This         : ListFormat_Type;
      ListTemplate : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure RemoveNumbers
     (This       : ListFormat_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure ConvertNumbersToText
     (This       : ListFormat_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   function CountNumberedItems
     (This       : ListFormat_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Level      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ApplyBulletDefaultOld
     (This : ListFormat_Type);

   procedure ApplyNumberDefaultOld
     (This : ListFormat_Type);

   procedure ApplyOutlineNumberDefaultOld
     (This : ListFormat_Type);

   procedure ApplyListTemplateOld
     (This                 : ListFormat_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyTo              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   procedure ListOutdent
     (This : ListFormat_Type);

   procedure ListIndent
     (This : ListFormat_Type);

   procedure ApplyBulletDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True);

   procedure ApplyNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True);

   procedure ApplyOutlineNumberDefault
     (This                : ListFormat_Type;
      DefaultListBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True);

   procedure ApplyListTemplate
     (This                 : ListFormat_Type;
      ListTemplate         : GNATCOM.Types.VARIANT;
      ContinuePreviousList : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyTo              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultListBehavior  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   function Get_ListPictureBullet
     (This : ListFormat_Type)
     return GNATCOM.Types.VARIANT;

end winword.ListFormat_Object;

