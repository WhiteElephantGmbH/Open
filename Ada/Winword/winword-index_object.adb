package body winword.Index_Object is

   function Get_Application
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_Parent);
   end Get_Parent;

   function Get_HeadingSeparator
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_HeadingSeparator);
   end Get_HeadingSeparator;

   procedure Put_HeadingSeparator
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_HeadingSeparator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeadingSeparator;

   function Get_RightAlignPageNumbers
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_RightAlignPageNumbers);
   end Get_RightAlignPageNumbers;

   procedure Put_RightAlignPageNumbers
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_RightAlignPageNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightAlignPageNumbers;

   function Get_Type
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   function Get_NumberOfColumns
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_NumberOfColumns);
   end Get_NumberOfColumns;

   procedure Put_NumberOfColumns
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_NumberOfColumns,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberOfColumns;

   function Get_Range
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_Range);
   end Get_Range;

   function Get_TabLeader
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_TabLeader);
   end Get_TabLeader;

   procedure Put_TabLeader
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_TabLeader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabLeader;

   function Get_AccentedLetters
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_AccentedLetters);
   end Get_AccentedLetters;

   procedure Put_AccentedLetters
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_AccentedLetters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AccentedLetters;

   function Get_SortBy
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_SortBy);
   end Get_SortBy;

   procedure Put_SortBy
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_SortBy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SortBy;

   function Get_Filter
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_Filter);
   end Get_Filter;

   procedure Put_Filter
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_Filter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Filter;

   procedure Delete
     (This : Index_Type)
   is
   begin
      Invoke (This, Index_Delete);
   end Delete;

   procedure Update
     (This : Index_Type)
   is
   begin
      Invoke (This, Index_Update);
   end Update;

   function Get_IndexLanguage
     (This : Index_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Index_Get_IndexLanguage);
   end Get_IndexLanguage;

   procedure Put_IndexLanguage
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Index_Put_IndexLanguage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IndexLanguage;

end winword.Index_Object;

