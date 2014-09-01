with GNATCOM.Dispinterface;

package winword.FileSearch_Object is

   type FileSearch_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SearchSubFolders
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SearchSubFolders
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchTextExactly
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchTextExactly
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchAllWordForms
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchAllWordForms
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FileName
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FileName
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FileType
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FileType
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LastModified
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LastModified
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextOrProperty
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextOrProperty
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LookIn
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LookIn
     (This : FileSearch_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Execute
     (This           : FileSearch_Type;
      SortBy         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AlwaysAccurate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure NewSearch
     (This : FileSearch_Type);

   function Get_FoundFiles
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PropertyTests
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SearchScopes
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SearchFolders
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FileTypes
     (This : FileSearch_Type)
     return GNATCOM.Types.VARIANT;

   procedure RefreshScopes
     (This : FileSearch_Type);

end winword.FileSearch_Object;

