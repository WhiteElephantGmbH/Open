package body winword.TableOfAuthorities_Object is

   function Get_Application
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Parent);
   end Get_Parent;

   function Get_Passim
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Passim);
   end Get_Passim;

   procedure Put_Passim
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_Passim,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Passim;

   function Get_KeepEntryFormatting
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_KeepEntryFormatting);
   end Get_KeepEntryFormatting;

   procedure Put_KeepEntryFormatting
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_KeepEntryFormatting,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepEntryFormatting;

   function Get_Category
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Category);
   end Get_Category;

   procedure Put_Category
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_Category,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Category;

   function Get_Bookmark
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Bookmark);
   end Get_Bookmark;

   procedure Put_Bookmark
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_Bookmark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Bookmark;

   function Get_Separator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Separator);
   end Get_Separator;

   procedure Put_Separator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_Separator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Separator;

   function Get_IncludeSequenceName
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_IncludeSequenceName);
   end Get_IncludeSequenceName;

   procedure Put_IncludeSequenceName
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_IncludeSequenceName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeSequenceName;

   function Get_EntrySeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_EntrySeparator);
   end Get_EntrySeparator;

   procedure Put_EntrySeparator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_EntrySeparator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EntrySeparator;

   function Get_PageRangeSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_PageRangeSeparator);
   end Get_PageRangeSeparator;

   procedure Put_PageRangeSeparator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_PageRangeSeparator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageRangeSeparator;

   function Get_IncludeCategoryHeader
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_IncludeCategoryHeader);
   end Get_IncludeCategoryHeader;

   procedure Put_IncludeCategoryHeader
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_IncludeCategoryHeader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeCategoryHeader;

   function Get_PageNumberSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_PageNumberSeparator);
   end Get_PageNumberSeparator;

   procedure Put_PageNumberSeparator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_PageNumberSeparator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageNumberSeparator;

   function Get_Range
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_Range);
   end Get_Range;

   function Get_TabLeader
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthorities_Get_TabLeader);
   end Get_TabLeader;

   procedure Put_TabLeader
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthorities_Put_TabLeader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabLeader;

   procedure Delete
     (This : TableOfAuthorities_Type)
   is
   begin
      Invoke (This, TableOfAuthorities_Delete);
   end Delete;

   procedure Update
     (This : TableOfAuthorities_Type)
   is
   begin
      Invoke (This, TableOfAuthorities_Update);
   end Update;

end winword.TableOfAuthorities_Object;

