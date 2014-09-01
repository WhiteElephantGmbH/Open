package body winword.TableOfContents_Object is

   function Get_Application
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_Parent);
   end Get_Parent;

   function Get_UseHeadingStyles
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_UseHeadingStyles);
   end Get_UseHeadingStyles;

   procedure Put_UseHeadingStyles
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_UseHeadingStyles,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseHeadingStyles;

   function Get_UseFields
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_UseFields);
   end Get_UseFields;

   procedure Put_UseFields
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_UseFields,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseFields;

   function Get_UpperHeadingLevel
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_UpperHeadingLevel);
   end Get_UpperHeadingLevel;

   procedure Put_UpperHeadingLevel
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_UpperHeadingLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpperHeadingLevel;

   function Get_LowerHeadingLevel
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_LowerHeadingLevel);
   end Get_LowerHeadingLevel;

   procedure Put_LowerHeadingLevel
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_LowerHeadingLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LowerHeadingLevel;

   function Get_TableID
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_TableID);
   end Get_TableID;

   procedure Put_TableID
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_TableID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TableID;

   function Get_HeadingStyles
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_HeadingStyles);
   end Get_HeadingStyles;

   function Get_RightAlignPageNumbers
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_RightAlignPageNumbers);
   end Get_RightAlignPageNumbers;

   procedure Put_RightAlignPageNumbers
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_RightAlignPageNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightAlignPageNumbers;

   function Get_IncludePageNumbers
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_IncludePageNumbers);
   end Get_IncludePageNumbers;

   procedure Put_IncludePageNumbers
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_IncludePageNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludePageNumbers;

   function Get_Range
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_Range);
   end Get_Range;

   function Get_TabLeader
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_TabLeader);
   end Get_TabLeader;

   procedure Put_TabLeader
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_TabLeader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabLeader;

   procedure Delete
     (This : TableOfContents_Type)
   is
   begin
      Invoke (This, TableOfContents_Delete);
   end Delete;

   procedure UpdatePageNumbers
     (This : TableOfContents_Type)
   is
   begin
      Invoke (This, TableOfContents_UpdatePageNumbers);
   end UpdatePageNumbers;

   procedure Update
     (This : TableOfContents_Type)
   is
   begin
      Invoke (This, TableOfContents_Update);
   end Update;

   function Get_UseHyperlinks
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_UseHyperlinks);
   end Get_UseHyperlinks;

   procedure Put_UseHyperlinks
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_UseHyperlinks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseHyperlinks;

   function Get_HidePageNumbersInWeb
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfContents_Get_HidePageNumbersInWeb);
   end Get_HidePageNumbersInWeb;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfContents_Put_HidePageNumbersInWeb,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HidePageNumbersInWeb;

end winword.TableOfContents_Object;

