with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileSearch_Interface is

   procedure Initialize (This : in out FileSearch_Type) is
   begin
      Set_IID (This, IID_FileSearch);
   end Initialize;

   function Pointer (This : FileSearch_Type)
     return Pointer_To_FileSearch
   is
   begin
      return To_Pointer_To_FileSearch (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileSearch_Type;
                     Pointer : in     Pointer_To_FileSearch)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : FileSearch_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : FileSearch_Type)
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

   function Get_SearchSubFolders
     (This                   : FileSearch_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SearchSubFolders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SearchSubFolders;

   procedure Put_SearchSubFolders
     (This                   : FileSearch_Type;
      SearchSubFoldersRetVal : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SearchSubFolders
         (Pointer (This),
          SearchSubFoldersRetVal));

   end Put_SearchSubFolders;

   function Get_MatchTextExactly
     (This            : FileSearch_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchTextExactly
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchTextExactly;

   procedure Put_MatchTextExactly
     (This            : FileSearch_Type;
      MatchTextRetVal : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchTextExactly
         (Pointer (This),
          MatchTextRetVal));

   end Put_MatchTextExactly;

   function Get_MatchAllWordForms
     (This                    : FileSearch_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchAllWordForms
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchAllWordForms;

   procedure Put_MatchAllWordForms
     (This                    : FileSearch_Type;
      MatchAllWordFormsRetVal : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchAllWordForms
         (Pointer (This),
          MatchAllWordFormsRetVal));

   end Put_MatchAllWordForms;

   function Get_FileName
     (This           : FileSearch_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FileName;

   procedure Put_FileName
     (This           : FileSearch_Type;
      FileNameRetVal : GNATCOM.Types.BSTR;
      Free           : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FileName
         (Pointer (This),
          FileNameRetVal));

      if Free then
               GNATCOM.Interface.Free (FileNameRetVal);
      
      end if;

   end Put_FileName;

   function Get_FileType
     (This           : FileSearch_Type)
     return MsoFileType
   is
       RetVal : aliased MsoFileType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FileType;

   procedure Put_FileType
     (This           : FileSearch_Type;
      FileTypeRetVal : MsoFileType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FileType
         (Pointer (This),
          FileTypeRetVal));

   end Put_FileType;

   function Get_LastModified
     (This               : FileSearch_Type)
     return MsoLastModified
   is
       RetVal : aliased MsoLastModified;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LastModified
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LastModified;

   procedure Put_LastModified
     (This               : FileSearch_Type;
      LastModifiedRetVal : MsoLastModified)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LastModified
         (Pointer (This),
          LastModifiedRetVal));

   end Put_LastModified;

   function Get_TextOrProperty
     (This           : FileSearch_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextOrProperty
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextOrProperty;

   procedure Put_TextOrProperty
     (This           : FileSearch_Type;
      TextOrProperty : GNATCOM.Types.BSTR;
      Free           : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextOrProperty
         (Pointer (This),
          TextOrProperty));

      if Free then
               GNATCOM.Interface.Free (TextOrProperty);
      
      end if;

   end Put_TextOrProperty;

   function Get_LookIn
     (This         : FileSearch_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LookIn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LookIn;

   procedure Put_LookIn
     (This         : FileSearch_Type;
      LookInRetVal : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LookIn
         (Pointer (This),
          LookInRetVal));

      if Free then
               GNATCOM.Interface.Free (LookInRetVal);
      
      end if;

   end Put_LookIn;

   function Execute
     (This           : FileSearch_Type;
      SortBy         : MsoSortBy;
      SortOrder      : MsoSortOrder;
      AlwaysAccurate : GNATCOM.Types.VARIANT_BOOL)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This),
          SortBy,
          SortOrder,
          AlwaysAccurate,
          RetVal'Unchecked_Access));

      return RetVal;
   end Execute;

   procedure NewSearch
     (This : FileSearch_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewSearch
         (Pointer (This)));

   end NewSearch;

   function Get_FoundFiles
     (This          : FileSearch_Type)
     return Pointer_To_FoundFiles
   is
       RetVal : aliased Pointer_To_FoundFiles;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FoundFiles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FoundFiles;

   function Get_PropertyTests
     (This         : FileSearch_Type)
     return Pointer_To_PropertyTests
   is
       RetVal : aliased Pointer_To_PropertyTests;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PropertyTests
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PropertyTests;

   function Get_SearchScopes
     (This            : FileSearch_Type)
     return Pointer_To_SearchScopes
   is
       RetVal : aliased Pointer_To_SearchScopes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SearchScopes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SearchScopes;

   function Get_SearchFolders
     (This             : FileSearch_Type)
     return Pointer_To_SearchFolders
   is
       RetVal : aliased Pointer_To_SearchFolders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SearchFolders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SearchFolders;

   function Get_FileTypes
     (This         : FileSearch_Type)
     return Pointer_To_FileTypes
   is
       RetVal : aliased Pointer_To_FileTypes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileTypes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FileTypes;

   procedure RefreshScopes
     (This : FileSearch_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RefreshScopes
         (Pointer (This)));

   end RefreshScopes;

end winword.FileSearch_Interface;

