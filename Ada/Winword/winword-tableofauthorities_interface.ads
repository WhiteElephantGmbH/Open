with GNATCOM.Dispinterface;

package winword.TableOfAuthorities_Interface is

   type TableOfAuthorities_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TableOfAuthorities_Type);

   function Pointer (This : TableOfAuthorities_Type)
     return Pointer_To_TableOfAuthorities;

   procedure Attach (This    : in out TableOfAuthorities_Type;
                     Pointer : in     Pointer_To_TableOfAuthorities);

   function Get_Application
     (This : TableOfAuthorities_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TableOfAuthorities_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Passim
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Passim
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_KeepEntryFormatting
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_KeepEntryFormatting
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Category
     (This : TableOfAuthorities_Type)
     return Interfaces.C.long;

   procedure Put_Category
     (This : TableOfAuthorities_Type;
      prop : Interfaces.C.long);

   function Get_Bookmark
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Bookmark
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Separator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Separator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IncludeSequenceName
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_IncludeSequenceName
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_EntrySeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_EntrySeparator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_PageRangeSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_PageRangeSeparator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IncludeCategoryHeader
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeCategoryHeader
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PageNumberSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_PageNumberSeparator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Range
     (This : TableOfAuthorities_Type)
     return Pointer_To_uRange;

   function Get_TabLeader
     (This : TableOfAuthorities_Type)
     return WdTabLeader;

   procedure Put_TabLeader
     (This : TableOfAuthorities_Type;
      prop : WdTabLeader);

   procedure Delete
     (This : TableOfAuthorities_Type);

   procedure Update
     (This : TableOfAuthorities_Type);

end winword.TableOfAuthorities_Interface;

