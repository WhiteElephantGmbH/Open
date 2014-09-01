with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TableOfAuthorities_Interface is

   procedure Initialize (This : in out TableOfAuthorities_Type) is
   begin
      Set_IID (This, IID_TableOfAuthorities);
   end Initialize;

   function Pointer (This : TableOfAuthorities_Type)
     return Pointer_To_TableOfAuthorities
   is
   begin
      return To_Pointer_To_TableOfAuthorities (Address (This));
   end Pointer;

   procedure Attach (This    : in out TableOfAuthorities_Type;
                     Pointer : in     Pointer_To_TableOfAuthorities)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TableOfAuthorities_Type)
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
     (This : TableOfAuthorities_Type)
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
     (This : TableOfAuthorities_Type)
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

   function Get_Passim
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Passim
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Passim;

   procedure Put_Passim
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Passim
         (Pointer (This),
          prop));

   end Put_Passim;

   function Get_KeepEntryFormatting
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeepEntryFormatting
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeepEntryFormatting;

   procedure Put_KeepEntryFormatting
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KeepEntryFormatting
         (Pointer (This),
          prop));

   end Put_KeepEntryFormatting;

   function Get_Category
     (This : TableOfAuthorities_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Category
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Category;

   procedure Put_Category
     (This : TableOfAuthorities_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Category
         (Pointer (This),
          prop));

   end Put_Category;

   function Get_Bookmark
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Bookmark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Bookmark;

   procedure Put_Bookmark
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Bookmark
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Bookmark;

   function Get_Separator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Separator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Separator;

   procedure Put_Separator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Separator
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Separator;

   function Get_IncludeSequenceName
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeSequenceName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeSequenceName;

   procedure Put_IncludeSequenceName
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeSequenceName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_IncludeSequenceName;

   function Get_EntrySeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EntrySeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EntrySeparator;

   procedure Put_EntrySeparator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EntrySeparator
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_EntrySeparator;

   function Get_PageRangeSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageRangeSeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageRangeSeparator;

   procedure Put_PageRangeSeparator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageRangeSeparator
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_PageRangeSeparator;

   function Get_IncludeCategoryHeader
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeCategoryHeader
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeCategoryHeader;

   procedure Put_IncludeCategoryHeader
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeCategoryHeader
         (Pointer (This),
          prop));

   end Put_IncludeCategoryHeader;

   function Get_PageNumberSeparator
     (This : TableOfAuthorities_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageNumberSeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageNumberSeparator;

   procedure Put_PageNumberSeparator
     (This : TableOfAuthorities_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageNumberSeparator
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_PageNumberSeparator;

   function Get_Range
     (This : TableOfAuthorities_Type)
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
     (This : TableOfAuthorities_Type)
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
     (This : TableOfAuthorities_Type;
      prop : WdTabLeader)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabLeader
         (Pointer (This),
          prop));

   end Put_TabLeader;

   procedure Delete
     (This : TableOfAuthorities_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure Update
     (This : TableOfAuthorities_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

end winword.TableOfAuthorities_Interface;

