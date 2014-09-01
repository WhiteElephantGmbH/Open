with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Style_Interface is

   procedure Initialize (This : in out Style_Type) is
   begin
      Set_IID (This, IID_Style);
   end Initialize;

   function Pointer (This : Style_Type)
     return Pointer_To_Style
   is
   begin
      return To_Pointer_To_Style (Address (This));
   end Pointer;

   procedure Attach (This    : in out Style_Type;
                     Pointer : in     Pointer_To_Style)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Style_Type)
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
     (This : Style_Type)
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
     (This : Style_Type)
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

   function Get_NameLocal
     (This : Style_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameLocal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameLocal;

   procedure Put_NameLocal
     (This : Style_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NameLocal
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NameLocal;

   function Get_BaseStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BaseStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BaseStyle;

   procedure Put_BaseStyle
     (This : Style_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BaseStyle
         (Pointer (This),
          prop));

   end Put_BaseStyle;

   function Get_Description
     (This : Style_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Description
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Description;

   function Get_Type
     (This : Style_Type)
     return WdStyleType
   is
       RetVal : aliased WdStyleType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_BuiltIn
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltIn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuiltIn;

   function Get_NextParagraphStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NextParagraphStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NextParagraphStyle;

   procedure Put_NextParagraphStyle
     (This : Style_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NextParagraphStyle
         (Pointer (This),
          prop));

   end Put_NextParagraphStyle;

   function Get_InUse
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InUse
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InUse;

   function Get_Shading
     (This : Style_Type)
     return Pointer_To_Shading
   is
       RetVal : aliased Pointer_To_Shading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shading;

   function Get_Borders
     (This : Style_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : Style_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_ParagraphFormat
     (This : Style_Type)
     return Pointer_To_uParagraphFormat
   is
       RetVal : aliased Pointer_To_uParagraphFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ParagraphFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Style_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ParagraphFormat
         (Pointer (This),
          prop));

   end Put_ParagraphFormat;

   function Get_Font
     (This : Style_Type)
     return Pointer_To_uFont
   is
       RetVal : aliased Pointer_To_uFont;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Font
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Font;

   procedure Put_Font
     (This : Style_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

   function Get_Frame
     (This : Style_Type)
     return Pointer_To_Frame
   is
       RetVal : aliased Pointer_To_Frame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frame
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Frame;

   function Get_LanguageID
     (This : Style_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Style_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_AutomaticallyUpdate
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutomaticallyUpdate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutomaticallyUpdate;

   procedure Put_AutomaticallyUpdate
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutomaticallyUpdate
         (Pointer (This),
          prop));

   end Put_AutomaticallyUpdate;

   function Get_ListTemplate
     (This : Style_Type)
     return Pointer_To_ListTemplate
   is
       RetVal : aliased Pointer_To_ListTemplate;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListTemplate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListTemplate;

   function Get_ListLevelNumber
     (This : Style_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListLevelNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListLevelNumber;

   function Get_LanguageIDFarEast
     (This : Style_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageIDFarEast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Style_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDFarEast
         (Pointer (This),
          prop));

   end Put_LanguageIDFarEast;

   function Get_Hidden
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hidden
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Hidden;

   procedure Put_Hidden
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Hidden
         (Pointer (This),
          prop));

   end Put_Hidden;

   procedure Delete
     (This : Style_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure LinkToListTemplate
     (This            : Style_Type;
      ListTemplate    : Pointer_To_ListTemplate;
      ListLevelNumber : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LinkToListTemplate
         (Pointer (This),
          ListTemplate,
          ListLevelNumber));

   end LinkToListTemplate;

   function Get_NoProofing
     (This : Style_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoProofing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Style_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoProofing
         (Pointer (This),
          prop));

   end Put_NoProofing;

   function Get_LinkStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinkStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinkStyle;

   procedure Put_LinkStyle
     (This : Style_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LinkStyle
         (Pointer (This),
          prop));

   end Put_LinkStyle;

   function Get_Visibility
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visibility
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visibility;

   procedure Put_Visibility
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visibility
         (Pointer (This),
          prop));

   end Put_Visibility;

   function Get_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoSpaceBetweenParagraphsOfSameStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoSpaceBetweenParagraphsOfSameStyle;

   procedure Put_NoSpaceBetweenParagraphsOfSameStyle
     (This : Style_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoSpaceBetweenParagraphsOfSameStyle
         (Pointer (This),
          prop));

   end Put_NoSpaceBetweenParagraphsOfSameStyle;

   function Get_Table
     (This : Style_Type)
     return Pointer_To_TableStyle
   is
       RetVal : aliased Pointer_To_TableStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Table
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Table;

end winword.Style_Interface;

