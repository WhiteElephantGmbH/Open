with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TableOfFigures_Interface is

   procedure Initialize (This : in out TableOfFigures_Type) is
   begin
      Set_IID (This, IID_TableOfFigures);
   end Initialize;

   function Pointer (This : TableOfFigures_Type)
     return Pointer_To_TableOfFigures
   is
   begin
      return To_Pointer_To_TableOfFigures (Address (This));
   end Pointer;

   procedure Attach (This    : in out TableOfFigures_Type;
                     Pointer : in     Pointer_To_TableOfFigures)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TableOfFigures_Type)
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
     (This : TableOfFigures_Type)
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
     (This : TableOfFigures_Type)
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

   function Get_Caption
     (This : TableOfFigures_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Caption
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Caption;

   procedure Put_Caption
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Caption
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Caption;

   function Get_IncludeLabel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeLabel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeLabel;

   procedure Put_IncludeLabel
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeLabel
         (Pointer (This),
          prop));

   end Put_IncludeLabel;

   function Get_RightAlignPageNumbers
     (This : TableOfFigures_Type)
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
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightAlignPageNumbers
         (Pointer (This),
          prop));

   end Put_RightAlignPageNumbers;

   function Get_UseHeadingStyles
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseHeadingStyles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseHeadingStyles;

   procedure Put_UseHeadingStyles
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseHeadingStyles
         (Pointer (This),
          prop));

   end Put_UseHeadingStyles;

   function Get_LowerHeadingLevel
     (This : TableOfFigures_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LowerHeadingLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LowerHeadingLevel;

   procedure Put_LowerHeadingLevel
     (This : TableOfFigures_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LowerHeadingLevel
         (Pointer (This),
          prop));

   end Put_LowerHeadingLevel;

   function Get_UpperHeadingLevel
     (This : TableOfFigures_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UpperHeadingLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UpperHeadingLevel;

   procedure Put_UpperHeadingLevel
     (This : TableOfFigures_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UpperHeadingLevel
         (Pointer (This),
          prop));

   end Put_UpperHeadingLevel;

   function Get_IncludePageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludePageNumbers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludePageNumbers;

   procedure Put_IncludePageNumbers
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludePageNumbers
         (Pointer (This),
          prop));

   end Put_IncludePageNumbers;

   function Get_Range
     (This : TableOfFigures_Type)
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

   function Get_UseFields
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseFields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseFields;

   procedure Put_UseFields
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseFields
         (Pointer (This),
          prop));

   end Put_UseFields;

   function Get_TableID
     (This : TableOfFigures_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TableID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TableID;

   procedure Put_TableID
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TableID
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_TableID;

   function Get_HeadingStyles
     (This : TableOfFigures_Type)
     return Pointer_To_HeadingStyles
   is
       RetVal : aliased Pointer_To_HeadingStyles;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeadingStyles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeadingStyles;

   function Get_TabLeader
     (This : TableOfFigures_Type)
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
     (This : TableOfFigures_Type;
      prop : WdTabLeader)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabLeader
         (Pointer (This),
          prop));

   end Put_TabLeader;

   procedure Delete
     (This : TableOfFigures_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure UpdatePageNumbers
     (This : TableOfFigures_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdatePageNumbers
         (Pointer (This)));

   end UpdatePageNumbers;

   procedure Update
     (This : TableOfFigures_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

   function Get_UseHyperlinks
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseHyperlinks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseHyperlinks;

   procedure Put_UseHyperlinks
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseHyperlinks
         (Pointer (This),
          prop));

   end Put_UseHyperlinks;

   function Get_HidePageNumbersInWeb
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HidePageNumbersInWeb
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HidePageNumbersInWeb;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HidePageNumbersInWeb
         (Pointer (This),
          prop));

   end Put_HidePageNumbersInWeb;

end winword.TableOfFigures_Interface;

