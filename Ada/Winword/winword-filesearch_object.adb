package body winword.FileSearch_Object is

   function Get_Application
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_Creator);
   end Get_Creator;

   function Get_SearchSubFolders
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_SearchSubFolders);
   end Get_SearchSubFolders;

   procedure Put_SearchSubFolders
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_SearchSubFolders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SearchSubFolders;

   function Get_MatchTextExactly
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_MatchTextExactly);
   end Get_MatchTextExactly;

   procedure Put_MatchTextExactly
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_MatchTextExactly,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchTextExactly;

   function Get_MatchAllWordForms
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_MatchAllWordForms);
   end Get_MatchAllWordForms;

   procedure Put_MatchAllWordForms
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_MatchAllWordForms,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchAllWordForms;

   function Get_FileName
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_FileName);
   end Get_FileName;

   procedure Put_FileName
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_FileName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FileName;

   function Get_FileType
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_FileType);
   end Get_FileType;

   procedure Put_FileType
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_FileType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FileType;

   function Get_LastModified
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_LastModified);
   end Get_LastModified;

   procedure Put_LastModified
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_LastModified,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LastModified;

   function Get_TextOrProperty
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_TextOrProperty);
   end Get_TextOrProperty;

   procedure Put_TextOrProperty
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_TextOrProperty,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextOrProperty;

   function Get_LookIn
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_LookIn);
   end Get_LookIn;

   procedure Put_LookIn
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileSearch_Put_LookIn,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LookIn;

   function Execute
     (This           : FileSearch_Type;
      SortBy         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AlwaysAccurate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FileSearch_Execute,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AlwaysAccurate,
          2 => SortOrder,
          3 => SortBy),
         Free);
   end Execute;

   procedure NewSearch
     (This : FileSearch_Type)
   is
   begin
      Invoke (This, FileSearch_NewSearch);
   end NewSearch;

   function Get_FoundFiles
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_FoundFiles);
   end Get_FoundFiles;

   function Get_PropertyTests
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_PropertyTests);
   end Get_PropertyTests;

   function Get_SearchScopes
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_SearchScopes);
   end Get_SearchScopes;

   function Get_SearchFolders
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_SearchFolders);
   end Get_SearchFolders;

   function Get_FileTypes
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileSearch_Get_FileTypes);
   end Get_FileTypes;

   procedure RefreshScopes
     (This : FileSearch_Type)
   is
   begin
      Invoke (This, FileSearch_RefreshScopes);
   end RefreshScopes;

end winword.FileSearch_Object;

