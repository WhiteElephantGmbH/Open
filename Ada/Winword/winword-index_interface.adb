with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Index_Interface is

   procedure Initialize (This : in out Index_Type) is
   begin
      Set_IID (This, IID_Index);
   end Initialize;

   function Pointer (This : Index_Type)
     return Pointer_To_Index
   is
   begin
      return To_Pointer_To_Index (Address (This));
   end Pointer;

   procedure Attach (This    : in out Index_Type;
                     Pointer : in     Pointer_To_Index)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Index_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Index_Type)
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

   function Get_Parent
     (This : Index_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_HeadingSeparator
     (This : Index_Type)
     return WdHeadingSeparator
   is
       RetVal : aliased WdHeadingSeparator;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeadingSeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeadingSeparator;

   procedure Put_HeadingSeparator
     (This : Index_Type;
      prop : WdHeadingSeparator)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeadingSeparator
         (Pointer (This),
          prop));

   end Put_HeadingSeparator;

   function Get_RightAlignPageNumbers
     (This : Index_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightAlignPageNumbers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightAlignPageNumbers;

   procedure Put_RightAlignPageNumbers
     (This : Index_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightAlignPageNumbers
         (Pointer (This),
          prop));

   end Put_RightAlignPageNumbers;

   function Get_Type
     (This : Index_Type)
     return WdIndexType
   is
       RetVal : aliased WdIndexType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : Index_Type;
      prop : WdIndexType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   function Get_NumberOfColumns
     (This : Index_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberOfColumns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberOfColumns;

   procedure Put_NumberOfColumns
     (This : Index_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberOfColumns
         (Pointer (This),
          prop));

   end Put_NumberOfColumns;

   function Get_Range
     (This : Index_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_TabLeader
     (This : Index_Type)
     return WdTabLeader
   is
       RetVal : aliased WdTabLeader;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TabLeader
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TabLeader;

   procedure Put_TabLeader
     (This : Index_Type;
      prop : WdTabLeader)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabLeader
         (Pointer (This),
          prop));

   end Put_TabLeader;

   function Get_AccentedLetters
     (This : Index_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AccentedLetters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AccentedLetters;

   procedure Put_AccentedLetters
     (This : Index_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AccentedLetters
         (Pointer (This),
          prop));

   end Put_AccentedLetters;

   function Get_SortBy
     (This : Index_Type)
     return WdIndexSortBy
   is
       RetVal : aliased WdIndexSortBy;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SortBy
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SortBy;

   procedure Put_SortBy
     (This : Index_Type;
      prop : WdIndexSortBy)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SortBy
         (Pointer (This),
          prop));

   end Put_SortBy;

   function Get_Filter
     (This : Index_Type)
     return WdIndexFilter
   is
       RetVal : aliased WdIndexFilter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Filter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Filter;

   procedure Put_Filter
     (This : Index_Type;
      prop : WdIndexFilter)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Filter
         (Pointer (This),
          prop));

   end Put_Filter;

   procedure Delete
     (This : Index_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure Update
     (This : Index_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

   function Get_IndexLanguage
     (This : Index_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IndexLanguage
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IndexLanguage;

   procedure Put_IndexLanguage
     (This : Index_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IndexLanguage
         (Pointer (This),
          prop));

   end Put_IndexLanguage;

end winword.Index_Interface;

