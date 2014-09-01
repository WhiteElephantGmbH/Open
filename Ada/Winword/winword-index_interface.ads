with GNATCOM.Dispinterface;

package winword.Index_Interface is

   type Index_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Index_Type);

   function Pointer (This : Index_Type)
     return Pointer_To_Index;

   procedure Attach (This    : in out Index_Type;
                     Pointer : in     Pointer_To_Index);

   function Get_Application
     (This : Index_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Index_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Index_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_HeadingSeparator
     (This : Index_Type)
     return WdHeadingSeparator;

   procedure Put_HeadingSeparator
     (This : Index_Type;
      prop : WdHeadingSeparator);

   function Get_RightAlignPageNumbers
     (This : Index_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RightAlignPageNumbers
     (This : Index_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Type
     (This : Index_Type)
     return WdIndexType;

   procedure Put_Type
     (This : Index_Type;
      prop : WdIndexType);

   function Get_NumberOfColumns
     (This : Index_Type)
     return Interfaces.C.long;

   procedure Put_NumberOfColumns
     (This : Index_Type;
      prop : Interfaces.C.long);

   function Get_Range
     (This : Index_Type)
     return Pointer_To_uRange;

   function Get_TabLeader
     (This : Index_Type)
     return WdTabLeader;

   procedure Put_TabLeader
     (This : Index_Type;
      prop : WdTabLeader);

   function Get_AccentedLetters
     (This : Index_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AccentedLetters
     (This : Index_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SortBy
     (This : Index_Type)
     return WdIndexSortBy;

   procedure Put_SortBy
     (This : Index_Type;
      prop : WdIndexSortBy);

   function Get_Filter
     (This : Index_Type)
     return WdIndexFilter;

   procedure Put_Filter
     (This : Index_Type;
      prop : WdIndexFilter);

   procedure Delete
     (This : Index_Type);

   procedure Update
     (This : Index_Type);

   function Get_IndexLanguage
     (This : Index_Type)
     return WdLanguageID;

   procedure Put_IndexLanguage
     (This : Index_Type;
      prop : WdLanguageID);

end winword.Index_Interface;

