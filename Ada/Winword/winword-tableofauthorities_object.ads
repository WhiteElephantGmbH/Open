with GNATCOM.Dispinterface;

package winword.TableOfAuthorities_Object is

   type TableOfAuthorities_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Passim
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Passim
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepEntryFormatting
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepEntryFormatting
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Category
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Category
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Bookmark
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Bookmark
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Separator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Separator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludeSequenceName
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeSequenceName
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EntrySeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EntrySeparator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageRangeSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageRangeSeparator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludeCategoryHeader
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeCategoryHeader
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageNumberSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageNumberSeparator
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TabLeader
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabLeader
     (This : TableOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : TableOfAuthorities_Type);

   procedure Update
     (This : TableOfAuthorities_Type);

end winword.TableOfAuthorities_Object;

