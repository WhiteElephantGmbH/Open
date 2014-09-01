package body winword.TableOfFigures_Object is

   function Get_Application
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_Parent);
   end Get_Parent;

   function Get_Caption
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_Caption);
   end Get_Caption;

   procedure Put_Caption
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_Caption,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Caption;

   function Get_IncludeLabel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_IncludeLabel);
   end Get_IncludeLabel;

   procedure Put_IncludeLabel
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_IncludeLabel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeLabel;

   function Get_RightAlignPageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_RightAlignPageNumbers);
   end Get_RightAlignPageNumbers;

   procedure Put_RightAlignPageNumbers
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_RightAlignPageNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightAlignPageNumbers;

   function Get_UseHeadingStyles
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_UseHeadingStyles);
   end Get_UseHeadingStyles;

   procedure Put_UseHeadingStyles
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_UseHeadingStyles,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseHeadingStyles;

   function Get_LowerHeadingLevel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_LowerHeadingLevel);
   end Get_LowerHeadingLevel;

   procedure Put_LowerHeadingLevel
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_LowerHeadingLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LowerHeadingLevel;

   function Get_UpperHeadingLevel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_UpperHeadingLevel);
   end Get_UpperHeadingLevel;

   procedure Put_UpperHeadingLevel
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_UpperHeadingLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpperHeadingLevel;

   function Get_IncludePageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_IncludePageNumbers);
   end Get_IncludePageNumbers;

   procedure Put_IncludePageNumbers
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_IncludePageNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludePageNumbers;

   function Get_Range
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_Range);
   end Get_Range;

   function Get_UseFields
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_UseFields);
   end Get_UseFields;

   procedure Put_UseFields
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_UseFields,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseFields;

   function Get_TableID
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_TableID);
   end Get_TableID;

   procedure Put_TableID
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_TableID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TableID;

   function Get_HeadingStyles
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_HeadingStyles);
   end Get_HeadingStyles;

   function Get_TabLeader
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_TabLeader);
   end Get_TabLeader;

   procedure Put_TabLeader
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_TabLeader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabLeader;

   procedure Delete
     (This : TableOfFigures_Type)
   is
   begin
      Invoke (This, TableOfFigures_Delete);
   end Delete;

   procedure UpdatePageNumbers
     (This : TableOfFigures_Type)
   is
   begin
      Invoke (This, TableOfFigures_UpdatePageNumbers);
   end UpdatePageNumbers;

   procedure Update
     (This : TableOfFigures_Type)
   is
   begin
      Invoke (This, TableOfFigures_Update);
   end Update;

   function Get_UseHyperlinks
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_UseHyperlinks);
   end Get_UseHyperlinks;

   procedure Put_UseHyperlinks
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_UseHyperlinks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseHyperlinks;

   function Get_HidePageNumbersInWeb
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfFigures_Get_HidePageNumbersInWeb);
   end Get_HidePageNumbersInWeb;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfFigures_Put_HidePageNumbersInWeb,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HidePageNumbersInWeb;

end winword.TableOfFigures_Object;

