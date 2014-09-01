with GNATCOM.Dispinterface;

package winword.FileSearch_Interface is

   type FileSearch_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileSearch_Type);

   function Pointer (This : FileSearch_Type)
     return Pointer_To_FileSearch;

   procedure Attach (This    : in out FileSearch_Type;
                     Pointer : in     Pointer_To_FileSearch);

   function Get_Application
     (This    : FileSearch_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FileSearch_Type)
     return Interfaces.C.long;

   function Get_SearchSubFolders
     (This                   : FileSearch_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SearchSubFolders
     (This                   : FileSearch_Type;
      SearchSubFoldersRetVal : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchTextExactly
     (This            : FileSearch_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchTextExactly
     (This            : FileSearch_Type;
      MatchTextRetVal : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchAllWordForms
     (This                    : FileSearch_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchAllWordForms
     (This                    : FileSearch_Type;
      MatchAllWordFormsRetVal : GNATCOM.Types.VARIANT_BOOL);

   function Get_FileName
     (This           : FileSearch_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FileName
     (This           : FileSearch_Type;
      FileNameRetVal : GNATCOM.Types.BSTR;
      Free           : Boolean := True);

   function Get_FileType
     (This           : FileSearch_Type)
     return MsoFileType;

   procedure Put_FileType
     (This           : FileSearch_Type;
      FileTypeRetVal : MsoFileType);

   function Get_LastModified
     (This               : FileSearch_Type)
     return MsoLastModified;

   procedure Put_LastModified
     (This               : FileSearch_Type;
      LastModifiedRetVal : MsoLastModified);

   function Get_TextOrProperty
     (This           : FileSearch_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_TextOrProperty
     (This           : FileSearch_Type;
      TextOrProperty : GNATCOM.Types.BSTR;
      Free           : Boolean := True);

   function Get_LookIn
     (This         : FileSearch_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_LookIn
     (This         : FileSearch_Type;
      LookInRetVal : GNATCOM.Types.BSTR;
      Free         : Boolean := True);

   function Execute
     (This           : FileSearch_Type;
      SortBy         : MsoSortBy;
      SortOrder      : MsoSortOrder;
      AlwaysAccurate : GNATCOM.Types.VARIANT_BOOL)
     return Interfaces.C.int;

   procedure NewSearch
     (This : FileSearch_Type);

   function Get_FoundFiles
     (This          : FileSearch_Type)
     return Pointer_To_FoundFiles;

   function Get_PropertyTests
     (This         : FileSearch_Type)
     return Pointer_To_PropertyTests;

   function Get_SearchScopes
     (This            : FileSearch_Type)
     return Pointer_To_SearchScopes;

   function Get_SearchFolders
     (This             : FileSearch_Type)
     return Pointer_To_SearchFolders;

   function Get_FileTypes
     (This         : FileSearch_Type)
     return Pointer_To_FileTypes;

   procedure RefreshScopes
     (This : FileSearch_Type);

end winword.FileSearch_Interface;

