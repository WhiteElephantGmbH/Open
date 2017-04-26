with GNATCOM.IInterface;

with GNATCOM.Errors;

package body winword.uDocument_Interface is

   procedure Initialize (This : in out uDocument_Type) is
   begin
      Set_IID (This, IID_uDocument);
   end Initialize;

   function Pointer (This : uDocument_Type)
     return Pointer_To_uDocument
   is
   begin
      return To_Pointer_To_uDocument (Address (This));
   end Pointer;

   procedure Attach (This    : in out uDocument_Type;
                     Pointer : in     Pointer_To_uDocument)
   is
   begin
      Attach (This, GNATCOM.IInterface.To_Pointer_To_IUnknown
              (Pointer.all'address));
   end Attach;

   function Get_Name
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Name;

   function Get_Application
     (This : uDocument_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Parent;

   function Get_BuiltInDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltInDocumentProperties
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_BuiltInDocumentProperties;

   function Get_CustomDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomDocumentProperties
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CustomDocumentProperties;

   function Get_Path
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Path;

   function Get_Bookmarks
     (This : uDocument_Type)
     return Pointer_To_Bookmarks
   is
       RetVal : aliased Pointer_To_Bookmarks;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Bookmarks
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Bookmarks;

   function Get_Tables
     (This : uDocument_Type)
     return Pointer_To_Tables
   is
       RetVal : aliased Pointer_To_Tables;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tables
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Tables;

   function Get_Footnotes
     (This : uDocument_Type)
     return Pointer_To_Footnotes
   is
       RetVal : aliased Pointer_To_Footnotes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Footnotes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Footnotes;

   function Get_Endnotes
     (This : uDocument_Type)
     return Pointer_To_Endnotes
   is
       RetVal : aliased Pointer_To_Endnotes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Endnotes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Endnotes;

   function Get_Comments
     (This : uDocument_Type)
     return Pointer_To_Comments
   is
       RetVal : aliased Pointer_To_Comments;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Comments
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Comments;

   function Get_Type
     (This : uDocument_Type)
     return WdDocumentType
   is
       RetVal : aliased WdDocumentType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Type;

   function Get_AutoHyphenation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoHyphenation
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AutoHyphenation;

   procedure Put_AutoHyphenation
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoHyphenation
         (Pointer (This),
          prop));

   end Put_AutoHyphenation;

   function Get_HyphenateCaps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HyphenateCaps
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HyphenateCaps;

   procedure Put_HyphenateCaps
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HyphenateCaps
         (Pointer (This),
          prop));

   end Put_HyphenateCaps;

   function Get_HyphenationZone
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HyphenationZone
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HyphenationZone;

   procedure Put_HyphenationZone
     (This : uDocument_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HyphenationZone
         (Pointer (This),
          prop));

   end Put_HyphenationZone;

   function Get_ConsecutiveHyphensLimit
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConsecutiveHyphensLimit
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ConsecutiveHyphensLimit;

   procedure Put_ConsecutiveHyphensLimit
     (This : uDocument_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ConsecutiveHyphensLimit
         (Pointer (This),
          prop));

   end Put_ConsecutiveHyphensLimit;

   function Get_Sections
     (This : uDocument_Type)
     return Pointer_To_Sections
   is
       RetVal : aliased Pointer_To_Sections;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Sections
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Sections;

   function Get_Paragraphs
     (This : uDocument_Type)
     return Pointer_To_Paragraphs
   is
       RetVal : aliased Pointer_To_Paragraphs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Paragraphs
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Paragraphs;

   function Get_Words
     (This : uDocument_Type)
     return Pointer_To_Words
   is
       RetVal : aliased Pointer_To_Words;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Words
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Words;

   function Get_Sentences
     (This : uDocument_Type)
     return Pointer_To_Sentences
   is
       RetVal : aliased Pointer_To_Sentences;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Sentences
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Sentences;

   function Get_Characters
     (This : uDocument_Type)
     return Pointer_To_Characters
   is
       RetVal : aliased Pointer_To_Characters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Characters
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Characters;

   function Get_Fields
     (This : uDocument_Type)
     return Pointer_To_Fields
   is
       RetVal : aliased Pointer_To_Fields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Fields
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Fields;

   function Get_FormFields
     (This : uDocument_Type)
     return Pointer_To_FormFields
   is
       RetVal : aliased Pointer_To_FormFields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormFields
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormFields;

   function Get_Styles
     (This : uDocument_Type)
     return Pointer_To_Styles
   is
       RetVal : aliased Pointer_To_Styles;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Styles
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Styles;

   function Get_Frames
     (This : uDocument_Type)
     return Pointer_To_Frames
   is
       RetVal : aliased Pointer_To_Frames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frames
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Frames;

   function Get_TablesOfFigures
     (This : uDocument_Type)
     return Pointer_To_TablesOfFigures
   is
       RetVal : aliased Pointer_To_TablesOfFigures;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TablesOfFigures
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TablesOfFigures;

   function Get_Variables
     (This : uDocument_Type)
     return Pointer_To_Variables
   is
       RetVal : aliased Pointer_To_Variables;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Variables
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Variables;

   function Get_MailMerge
     (This : uDocument_Type)
     return Pointer_To_MailMerge
   is
       RetVal : aliased Pointer_To_MailMerge;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailMerge
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MailMerge;

   function Get_Envelope
     (This : uDocument_Type)
     return Pointer_To_Envelope
   is
       RetVal : aliased Pointer_To_Envelope;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Envelope
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Envelope;

   function Get_FullName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FullName
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FullName;

   function Get_Revisions
     (This : uDocument_Type)
     return Pointer_To_Revisions
   is
       RetVal : aliased Pointer_To_Revisions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Revisions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Revisions;

   function Get_TablesOfContents
     (This : uDocument_Type)
     return Pointer_To_TablesOfContents
   is
       RetVal : aliased Pointer_To_TablesOfContents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TablesOfContents
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TablesOfContents;

   function Get_TablesOfAuthorities
     (This : uDocument_Type)
     return Pointer_To_TablesOfAuthorities
   is
       RetVal : aliased Pointer_To_TablesOfAuthorities;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TablesOfAuthorities
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TablesOfAuthorities;

   function Get_PageSetup
     (This : uDocument_Type)
     return Pointer_To_PageSetup
   is
       RetVal : aliased Pointer_To_PageSetup;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageSetup
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : uDocument_Type;
      prop : Pointer_To_PageSetup)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageSetup
         (Pointer (This),
          prop));

   end Put_PageSetup;

   function Get_Windows
     (This : uDocument_Type)
     return Pointer_To_Windows
   is
       RetVal : aliased Pointer_To_Windows;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Windows
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Windows;

   function Get_HasRoutingSlip
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasRoutingSlip
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HasRoutingSlip;

   procedure Put_HasRoutingSlip
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HasRoutingSlip
         (Pointer (This),
          prop));

   end Put_HasRoutingSlip;

   function Get_RoutingSlip
     (This : uDocument_Type)
     return Pointer_To_RoutingSlip
   is
       RetVal : aliased Pointer_To_RoutingSlip;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RoutingSlip
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_RoutingSlip;

   function Get_Routed
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Routed
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Routed;

   function Get_TablesOfAuthoritiesCategories
     (This : uDocument_Type)
     return Pointer_To_TablesOfAuthoritiesCategories
   is
       RetVal : aliased Pointer_To_TablesOfAuthoritiesCategories;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TablesOfAuthoritiesCategories
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TablesOfAuthoritiesCategories;

   function Get_Indexes
     (This : uDocument_Type)
     return Pointer_To_Indexes
   is
       RetVal : aliased Pointer_To_Indexes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Indexes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Indexes;

   function Get_Saved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Saved
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Saved;

   procedure Put_Saved
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Saved
         (Pointer (This),
          prop));

   end Put_Saved;

   function Get_Content
     (This : uDocument_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Content
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Content;

   function Get_ActiveWindow
     (This : uDocument_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveWindow
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActiveWindow;

   function Get_Kind
     (This : uDocument_Type)
     return WdDocumentKind
   is
       RetVal : aliased WdDocumentKind;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Kind
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Kind;

   procedure Put_Kind
     (This : uDocument_Type;
      prop : WdDocumentKind)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Kind
         (Pointer (This),
          prop));

   end Put_Kind;

   function Get_ReadOnly
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReadOnly
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ReadOnly;

   function Get_Subdocuments
     (This : uDocument_Type)
     return Pointer_To_Subdocuments
   is
       RetVal : aliased Pointer_To_Subdocuments;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Subdocuments
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Subdocuments;

   function Get_IsMasterDocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsMasterDocument
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_IsMasterDocument;

   function Get_DefaultTabStop
     (This : uDocument_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTabStop
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DefaultTabStop;

   procedure Put_DefaultTabStop
     (This : uDocument_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTabStop
         (Pointer (This),
          prop));

   end Put_DefaultTabStop;

   function Get_EmbedTrueTypeFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmbedTrueTypeFonts
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_EmbedTrueTypeFonts;

   procedure Put_EmbedTrueTypeFonts
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmbedTrueTypeFonts
         (Pointer (This),
          prop));

   end Put_EmbedTrueTypeFonts;

   function Get_SaveFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveFormsData
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SaveFormsData;

   procedure Put_SaveFormsData
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SaveFormsData
         (Pointer (This),
          prop));

   end Put_SaveFormsData;

   function Get_ReadOnlyRecommended
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReadOnlyRecommended
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ReadOnlyRecommended;

   procedure Put_ReadOnlyRecommended
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReadOnlyRecommended
         (Pointer (This),
          prop));

   end Put_ReadOnlyRecommended;

   function Get_SaveSubsetFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveSubsetFonts
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SaveSubsetFonts;

   procedure Put_SaveSubsetFonts
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SaveSubsetFonts
         (Pointer (This),
          prop));

   end Put_SaveSubsetFonts;

   function Get_Compatibility
     (This  : uDocument_Type;
      uType : WdCompatibility)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Compatibility
         (Pointer (This),
          uType,
          RetVal'unchecked_access));

      return RetVal;
   end Get_Compatibility;

   procedure Put_Compatibility
     (This  : uDocument_Type;
      uType : WdCompatibility;
      prop  : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Compatibility
         (Pointer (This),
          uType,
          prop));

   end Put_Compatibility;

   function Get_StoryRanges
     (This : uDocument_Type)
     return Pointer_To_StoryRanges
   is
       RetVal : aliased Pointer_To_StoryRanges;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StoryRanges
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_StoryRanges;

   function Get_CommandBars
     (This : uDocument_Type)
     return Pointer_To_uCommandBars
   is
       RetVal : aliased Pointer_To_uCommandBars;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandBars
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CommandBars;

   function Get_IsSubdocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsSubdocument
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_IsSubdocument;

   function Get_SaveFormat
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveFormat
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SaveFormat;

   function Get_ProtectionType
     (This : uDocument_Type)
     return WdProtectionType
   is
       RetVal : aliased WdProtectionType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProtectionType
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ProtectionType;

   function Get_Hyperlinks
     (This : uDocument_Type)
     return Pointer_To_Hyperlinks
   is
       RetVal : aliased Pointer_To_Hyperlinks;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hyperlinks
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Hyperlinks;

   function Get_Shapes
     (This : uDocument_Type)
     return Pointer_To_Shapes
   is
       RetVal : aliased Pointer_To_Shapes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shapes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Shapes;

   function Get_ListTemplates
     (This : uDocument_Type)
     return Pointer_To_ListTemplates
   is
       RetVal : aliased Pointer_To_ListTemplates;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListTemplates
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ListTemplates;

   function Get_Lists
     (This : uDocument_Type)
     return Pointer_To_Lists
   is
       RetVal : aliased Pointer_To_Lists;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Lists
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Lists;

   function Get_UpdateStylesOnOpen
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UpdateStylesOnOpen
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UpdateStylesOnOpen;

   procedure Put_UpdateStylesOnOpen
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UpdateStylesOnOpen
         (Pointer (This),
          prop));

   end Put_UpdateStylesOnOpen;

   function Get_AttachedTemplate
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AttachedTemplate
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AttachedTemplate;

   procedure Put_AttachedTemplate
     (This : uDocument_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AttachedTemplate
         (Pointer (This),
          prop));

   end Put_AttachedTemplate;

   function Get_InlineShapes
     (This : uDocument_Type)
     return Pointer_To_InlineShapes
   is
       RetVal : aliased Pointer_To_InlineShapes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InlineShapes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_InlineShapes;

   function Get_Background
     (This : uDocument_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Background
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Background;

   procedure Put_Background
     (This : uDocument_Type;
      prop : Pointer_To_Shape)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Background
         (Pointer (This),
          prop));

   end Put_Background;

   function Get_GrammarChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GrammarChecked
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GrammarChecked;

   procedure Put_GrammarChecked
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GrammarChecked
         (Pointer (This),
          prop));

   end Put_GrammarChecked;

   function Get_SpellingChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpellingChecked
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SpellingChecked;

   procedure Put_SpellingChecked
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpellingChecked
         (Pointer (This),
          prop));

   end Put_SpellingChecked;

   function Get_ShowGrammaticalErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowGrammaticalErrors
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowGrammaticalErrors;

   procedure Put_ShowGrammaticalErrors
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowGrammaticalErrors
         (Pointer (This),
          prop));

   end Put_ShowGrammaticalErrors;

   function Get_ShowSpellingErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowSpellingErrors
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowSpellingErrors;

   procedure Put_ShowSpellingErrors
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowSpellingErrors
         (Pointer (This),
          prop));

   end Put_ShowSpellingErrors;

   function Get_Versions
     (This : uDocument_Type)
     return Pointer_To_Versions
   is
       RetVal : aliased Pointer_To_Versions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Versions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Versions;

   function Get_ShowSummary
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowSummary
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowSummary;

   procedure Put_ShowSummary
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowSummary
         (Pointer (This),
          prop));

   end Put_ShowSummary;

   function Get_SummaryViewMode
     (This : uDocument_Type)
     return WdSummaryMode
   is
       RetVal : aliased WdSummaryMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SummaryViewMode
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SummaryViewMode;

   procedure Put_SummaryViewMode
     (This : uDocument_Type;
      prop : WdSummaryMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SummaryViewMode
         (Pointer (This),
          prop));

   end Put_SummaryViewMode;

   function Get_SummaryLength
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SummaryLength
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SummaryLength;

   procedure Put_SummaryLength
     (This : uDocument_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SummaryLength
         (Pointer (This),
          prop));

   end Put_SummaryLength;

   function Get_PrintFractionalWidths
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintFractionalWidths
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PrintFractionalWidths;

   procedure Put_PrintFractionalWidths
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintFractionalWidths
         (Pointer (This),
          prop));

   end Put_PrintFractionalWidths;

   function Get_PrintPostScriptOverText
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintPostScriptOverText
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PrintPostScriptOverText;

   procedure Put_PrintPostScriptOverText
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintPostScriptOverText
         (Pointer (This),
          prop));

   end Put_PrintPostScriptOverText;

   function Get_Container
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Container
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Container;

   function Get_PrintFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintFormsData
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PrintFormsData;

   procedure Put_PrintFormsData
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintFormsData
         (Pointer (This),
          prop));

   end Put_PrintFormsData;

   function Get_ListParagraphs
     (This : uDocument_Type)
     return Pointer_To_ListParagraphs
   is
       RetVal : aliased Pointer_To_ListParagraphs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListParagraphs
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ListParagraphs;

   procedure Put_Password
     (This : uDocument_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Password
         (Pointer (This),
          P1));

      if Free then
               GNATCOM.IInterface.Free (P1);

      end if;

   end Put_Password;

   procedure Put_WritePassword
     (This : uDocument_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WritePassword
         (Pointer (This),
          P1));

      if Free then
               GNATCOM.IInterface.Free (P1);

      end if;

   end Put_WritePassword;

   function Get_HasPassword
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasPassword
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HasPassword;

   function Get_WriteReserved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WriteReserved
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_WriteReserved;

   function Get_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveWritingStyle
         (Pointer (This),
          LanguageID,
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActiveWritingStyle;

   procedure Put_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      prop       : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActiveWritingStyle
         (Pointer (This),
          LanguageID,
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_ActiveWritingStyle;

   function Get_UserControl
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UserControl
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UserControl;

   procedure Put_UserControl
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UserControl
         (Pointer (This),
          prop));

   end Put_UserControl;

   function Get_HasMailer
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasMailer
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HasMailer;

   procedure Put_HasMailer
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HasMailer
         (Pointer (This),
          prop));

   end Put_HasMailer;

   function Get_Mailer
     (This : uDocument_Type)
     return Pointer_To_Mailer
   is
       RetVal : aliased Pointer_To_Mailer;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Mailer
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Mailer;

   function Get_ReadabilityStatistics
     (This : uDocument_Type)
     return Pointer_To_ReadabilityStatistics
   is
       RetVal : aliased Pointer_To_ReadabilityStatistics;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReadabilityStatistics
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ReadabilityStatistics;

   function Get_GrammaticalErrors
     (This : uDocument_Type)
     return Pointer_To_ProofreadingErrors
   is
       RetVal : aliased Pointer_To_ProofreadingErrors;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GrammaticalErrors
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GrammaticalErrors;

   function Get_SpellingErrors
     (This : uDocument_Type)
     return Pointer_To_ProofreadingErrors
   is
       RetVal : aliased Pointer_To_ProofreadingErrors;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpellingErrors
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SpellingErrors;

   function Get_VBProject
     (This : uDocument_Type)
     return Pointer_To_uVBProject
   is
       RetVal : aliased Pointer_To_uVBProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBProject
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_VBProject;

   function Get_FormsDesign
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormsDesign
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormsDesign;

   function Getu_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_CodeName
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Getu_CodeName;

   procedure Putu_CodeName
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Putu_CodeName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Putu_CodeName;

   function Get_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CodeName
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CodeName;

   function Get_SnapToGrid
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SnapToGrid
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SnapToGrid;

   procedure Put_SnapToGrid
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SnapToGrid
         (Pointer (This),
          prop));

   end Put_SnapToGrid;

   function Get_SnapToShapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SnapToShapes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SnapToShapes;

   procedure Put_SnapToShapes
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SnapToShapes
         (Pointer (This),
          prop));

   end Put_SnapToShapes;

   function Get_GridDistanceHorizontal
     (This : uDocument_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridDistanceHorizontal
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridDistanceHorizontal;

   procedure Put_GridDistanceHorizontal
     (This : uDocument_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridDistanceHorizontal
         (Pointer (This),
          prop));

   end Put_GridDistanceHorizontal;

   function Get_GridDistanceVertical
     (This : uDocument_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridDistanceVertical
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridDistanceVertical;

   procedure Put_GridDistanceVertical
     (This : uDocument_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridDistanceVertical
         (Pointer (This),
          prop));

   end Put_GridDistanceVertical;

   function Get_GridOriginHorizontal
     (This : uDocument_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridOriginHorizontal
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridOriginHorizontal;

   procedure Put_GridOriginHorizontal
     (This : uDocument_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridOriginHorizontal
         (Pointer (This),
          prop));

   end Put_GridOriginHorizontal;

   function Get_GridOriginVertical
     (This : uDocument_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridOriginVertical
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridOriginVertical;

   procedure Put_GridOriginVertical
     (This : uDocument_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridOriginVertical
         (Pointer (This),
          prop));

   end Put_GridOriginVertical;

   function Get_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridSpaceBetweenHorizontalLines
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridSpaceBetweenHorizontalLines;

   procedure Put_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridSpaceBetweenHorizontalLines
         (Pointer (This),
          prop));

   end Put_GridSpaceBetweenHorizontalLines;

   function Get_GridSpaceBetweenVerticalLines
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridSpaceBetweenVerticalLines
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridSpaceBetweenVerticalLines;

   procedure Put_GridSpaceBetweenVerticalLines
     (This : uDocument_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridSpaceBetweenVerticalLines
         (Pointer (This),
          prop));

   end Put_GridSpaceBetweenVerticalLines;

   function Get_GridOriginFromMargin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridOriginFromMargin
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_GridOriginFromMargin;

   procedure Put_GridOriginFromMargin
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridOriginFromMargin
         (Pointer (This),
          prop));

   end Put_GridOriginFromMargin;

   function Get_KerningByAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KerningByAlgorithm
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_KerningByAlgorithm;

   procedure Put_KerningByAlgorithm
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KerningByAlgorithm
         (Pointer (This),
          prop));

   end Put_KerningByAlgorithm;

   function Get_JustificationMode
     (This : uDocument_Type)
     return WdJustificationMode
   is
       RetVal : aliased WdJustificationMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_JustificationMode
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_JustificationMode;

   procedure Put_JustificationMode
     (This : uDocument_Type;
      prop : WdJustificationMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_JustificationMode
         (Pointer (This),
          prop));

   end Put_JustificationMode;

   function Get_FarEastLineBreakLevel
     (This : uDocument_Type)
     return WdFarEastLineBreakLevel
   is
       RetVal : aliased WdFarEastLineBreakLevel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FarEastLineBreakLevel
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FarEastLineBreakLevel;

   procedure Put_FarEastLineBreakLevel
     (This : uDocument_Type;
      prop : WdFarEastLineBreakLevel)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FarEastLineBreakLevel
         (Pointer (This),
          prop));

   end Put_FarEastLineBreakLevel;

   function Get_NoLineBreakBefore
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoLineBreakBefore
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_NoLineBreakBefore;

   procedure Put_NoLineBreakBefore
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoLineBreakBefore
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_NoLineBreakBefore;

   function Get_NoLineBreakAfter
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoLineBreakAfter
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_NoLineBreakAfter;

   procedure Put_NoLineBreakAfter
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoLineBreakAfter
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_NoLineBreakAfter;

   function Get_TrackRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TrackRevisions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TrackRevisions;

   procedure Put_TrackRevisions
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TrackRevisions
         (Pointer (This),
          prop));

   end Put_TrackRevisions;

   function Get_PrintRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintRevisions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PrintRevisions;

   procedure Put_PrintRevisions
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintRevisions
         (Pointer (This),
          prop));

   end Put_PrintRevisions;

   function Get_ShowRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowRevisions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowRevisions;

   procedure Put_ShowRevisions
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowRevisions
         (Pointer (This),
          prop));

   end Put_ShowRevisions;

   procedure Close
     (This           : uDocument_Type;
      SaveChanges    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OriginalFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This),
          SaveChanges,
          OriginalFormat,
          RouteDocument));

   end Close;

   procedure SaveAs2000
     (This                    : uDocument_Type;
      FileName                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileFormat              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LockComments            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePassword           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnlyRecommended     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EmbedTrueTypeFonts      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveNativePictureFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveFormsData           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveAsAOCELetter        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SaveAs2000
         (Pointer (This),
          FileName,
          FileFormat,
          LockComments,
          Password,
          AddToRecentFiles,
          WritePassword,
          ReadOnlyRecommended,
          EmbedTrueTypeFonts,
          SaveNativePictureFormat,
          SaveFormsData,
          SaveAsAOCELetter));

   end SaveAs2000;

   procedure Repaginate
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Repaginate
         (Pointer (This)));

   end Repaginate;

   procedure FitToPages
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FitToPages
         (Pointer (This)));

   end FitToPages;

   procedure ManualHyphenation
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ManualHyphenation
         (Pointer (This)));

   end ManualHyphenation;

   procedure uSelect
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure DataForm
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DataForm
         (Pointer (This)));

   end DataForm;

   procedure Route
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Route
         (Pointer (This)));

   end Route;

   procedure Save
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Save
         (Pointer (This)));

   end Save;

   procedure PrintOutOld
     (This               : uDocument_Type;
      Background         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOutOld
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          ActivePrinterMacGX,
          ManualDuplexPrint));

   end PrintOutOld;

   procedure SendMail
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SendMail
         (Pointer (This)));

   end SendMail;

   function uRange
     (This  : uDocument_Type;
      Start : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uEnd  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uRange
         (Pointer (This),
          Start,
          uEnd,
          RetVal'unchecked_access));

      return RetVal;
   end uRange;

   procedure RunAutoMacro
     (This  : uDocument_Type;
      Which : WdAutoMacros)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RunAutoMacro
         (Pointer (This),
          Which));

   end RunAutoMacro;

   procedure Activate
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   procedure PrintPreview
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintPreview
         (Pointer (This)));

   end PrintPreview;

   function uGoTo
     (This  : uDocument_Type;
      What  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Which : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Name  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uGoTo
         (Pointer (This),
          What,
          Which,
          Count,
          Name,
          RetVal'unchecked_access));

      return RetVal;
   end uGoTo;

   function Undo
     (This  : uDocument_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Undo
         (Pointer (This),
          Times,
          RetVal'unchecked_access));

      return RetVal;
   end Undo;

   function Redo
     (This  : uDocument_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Redo
         (Pointer (This),
          Times,
          RetVal'unchecked_access));

      return RetVal;
   end Redo;

   function ComputeStatistics
     (This                        : uDocument_Type;
      Statistic                   : WdStatistic;
      IncludeFootnotesAndEndnotes : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ComputeStatistics
         (Pointer (This),
          Statistic,
          IncludeFootnotesAndEndnotes,
          RetVal'unchecked_access));

      return RetVal;
   end ComputeStatistics;

   procedure MakeCompatibilityDefault
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MakeCompatibilityDefault
         (Pointer (This)));

   end MakeCompatibilityDefault;

   procedure Protect
     (This     : uDocument_Type;
      uType    : WdProtectionType;
      NoReset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Protect
         (Pointer (This),
          uType,
          NoReset,
          Password));

   end Protect;

   procedure Unprotect
     (This     : uDocument_Type;
      Password : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Unprotect
         (Pointer (This),
          Password));

   end Unprotect;

   procedure EditionOptions
     (This   : uDocument_Type;
      uType  : WdEditionType;
      Option : WdEditionOption;
      Name   : GNATCOM.Types.BSTR;
      Format : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EditionOptions
         (Pointer (This),
          uType,
          Option,
          Name,
          Format));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end EditionOptions;

   procedure RunLetterWizard
     (This          : uDocument_Type;
      LetterContent : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WizardMode    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RunLetterWizard
         (Pointer (This),
          LetterContent,
          WizardMode));

   end RunLetterWizard;

   function GetLetterContent
     (This : uDocument_Type)
     return Pointer_To_uLetterContent
   is
       RetVal : aliased Pointer_To_uLetterContent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetLetterContent
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end GetLetterContent;

   procedure SetLetterContent
     (This          : uDocument_Type;
      LetterContent : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetLetterContent
         (Pointer (This),
          LetterContent));

   end SetLetterContent;

   procedure CopyStylesFromTemplate
     (This     : uDocument_Type;
      Template : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CopyStylesFromTemplate
         (Pointer (This),
          Template));

      if Free then
               GNATCOM.IInterface.Free (Template);

      end if;

   end CopyStylesFromTemplate;

   procedure UpdateStyles
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdateStyles
         (Pointer (This)));

   end UpdateStyles;

   procedure CheckGrammar
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckGrammar
         (Pointer (This)));

   end CheckGrammar;

   procedure CheckSpelling
     (This               : uDocument_Type;
      CustomDictionary   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreUppercase    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AlwaysSuggest      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary2  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary3  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary4  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary5  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary6  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary7  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary8  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary9  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary10 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckSpelling
         (Pointer (This),
          CustomDictionary,
          IgnoreUppercase,
          AlwaysSuggest,
          CustomDictionary2,
          CustomDictionary3,
          CustomDictionary4,
          CustomDictionary5,
          CustomDictionary6,
          CustomDictionary7,
          CustomDictionary8,
          CustomDictionary9,
          CustomDictionary10));

   end CheckSpelling;

   procedure FollowHyperlink
     (This       : uDocument_Type;
      Address    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubAddress : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NewWindow  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddHistory : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtraInfo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Method     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeaderInfo : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FollowHyperlink
         (Pointer (This),
          Address,
          SubAddress,
          NewWindow,
          AddHistory,
          ExtraInfo,
          Method,
          HeaderInfo));

   end FollowHyperlink;

   procedure AddToFavorites
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddToFavorites
         (Pointer (This)));

   end AddToFavorites;

   procedure Reload
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reload
         (Pointer (This)));

   end Reload;

   function AutoSummarize
     (This             : uDocument_Type;
      Length           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Mode             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UpdateProperties : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoSummarize
         (Pointer (This),
          Length,
          Mode,
          UpdateProperties,
          RetVal'unchecked_access));

      return RetVal;
   end AutoSummarize;

   procedure RemoveNumbers
     (This       : uDocument_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RemoveNumbers
         (Pointer (This),
          NumberType));

   end RemoveNumbers;

   procedure ConvertNumbersToText
     (This       : uDocument_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertNumbersToText
         (Pointer (This),
          NumberType));

   end ConvertNumbersToText;

   function CountNumberedItems
     (This       : uDocument_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CountNumberedItems
         (Pointer (This),
          NumberType,
          Level,
          RetVal'unchecked_access));

      return RetVal;
   end CountNumberedItems;

   procedure Post
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Post
         (Pointer (This)));

   end Post;

   procedure ToggleFormsDesign
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ToggleFormsDesign
         (Pointer (This)));

   end ToggleFormsDesign;

   procedure Compare2000
     (This : uDocument_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Compare2000
         (Pointer (This),
          Name));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end Compare2000;

   procedure UpdateSummaryProperties
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdateSummaryProperties
         (Pointer (This)));

   end UpdateSummaryProperties;

   function GetCrossReferenceItems
     (This          : uDocument_Type;
      ReferenceType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetCrossReferenceItems
         (Pointer (This),
          ReferenceType,
          RetVal'unchecked_access));

      return RetVal;
   end GetCrossReferenceItems;

   procedure AutoFormat
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFormat
         (Pointer (This)));

   end AutoFormat;

   procedure ViewCode
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ViewCode
         (Pointer (This)));

   end ViewCode;

   procedure ViewPropertyBrowser
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ViewPropertyBrowser
         (Pointer (This)));

   end ViewPropertyBrowser;

   procedure ForwardMailer
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ForwardMailer
         (Pointer (This)));

   end ForwardMailer;

   procedure Reply
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reply
         (Pointer (This)));

   end Reply;

   procedure ReplyAll
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReplyAll
         (Pointer (This)));

   end ReplyAll;

   procedure SendMailer
     (This       : uDocument_Type;
      FileFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Priority   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SendMailer
         (Pointer (This),
          FileFormat,
          Priority));

   end SendMailer;

   procedure UndoClear
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UndoClear
         (Pointer (This)));

   end UndoClear;

   procedure PresentIt
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PresentIt
         (Pointer (This)));

   end PresentIt;

   procedure SendFax
     (This    : uDocument_Type;
      Address : GNATCOM.Types.BSTR;
      Subject : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SendFax
         (Pointer (This),
          Address,
          Subject));

      if Free then
               GNATCOM.IInterface.Free (Address);

      end if;

   end SendFax;

   procedure Merge2000
     (This     : uDocument_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Merge2000
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.IInterface.Free (FileName);

      end if;

   end Merge2000;

   procedure ClosePrintPreview
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClosePrintPreview
         (Pointer (This)));

   end ClosePrintPreview;

   procedure CheckConsistency
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckConsistency
         (Pointer (This)));

   end CheckConsistency;

   function CreateLetterContent
     (This                   : uDocument_Type;
      DateFormat             : GNATCOM.Types.BSTR;
      IncludeHeaderFooter    : GNATCOM.Types.VARIANT_BOOL;
      PageDesign             : GNATCOM.Types.BSTR;
      LetterStyle            : WdLetterStyle;
      Letterhead             : GNATCOM.Types.VARIANT_BOOL;
      LetterheadLocation     : WdLetterheadLocation;
      LetterheadSize         : Interfaces.C.C_float;
      RecipientName          : GNATCOM.Types.BSTR;
      RecipientAddress       : GNATCOM.Types.BSTR;
      Salutation             : GNATCOM.Types.BSTR;
      SalutationType         : WdSalutationType;
      RecipientReference     : GNATCOM.Types.BSTR;
      MailingInstructions    : GNATCOM.Types.BSTR;
      AttentionLine          : GNATCOM.Types.BSTR;
      Subject                : GNATCOM.Types.BSTR;
      CCList                 : GNATCOM.Types.BSTR;
      ReturnAddress          : GNATCOM.Types.BSTR;
      SenderName             : GNATCOM.Types.BSTR;
      Closing                : GNATCOM.Types.BSTR;
      SenderCompany          : GNATCOM.Types.BSTR;
      SenderJobTitle         : GNATCOM.Types.BSTR;
      SenderInitials         : GNATCOM.Types.BSTR;
      EnclosureNumber        : Interfaces.C.long;
      InfoBlock              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientCode          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientGender        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressShortForm : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderCity             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderCode             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderGender           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderReference        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                   : Boolean := True)
     return Pointer_To_uLetterContent
   is
       RetVal : aliased Pointer_To_uLetterContent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateLetterContent
         (Pointer (This),
          DateFormat,
          IncludeHeaderFooter,
          PageDesign,
          LetterStyle,
          Letterhead,
          LetterheadLocation,
          LetterheadSize,
          RecipientName,
          RecipientAddress,
          Salutation,
          SalutationType,
          RecipientReference,
          MailingInstructions,
          AttentionLine,
          Subject,
          CCList,
          ReturnAddress,
          SenderName,
          Closing,
          SenderCompany,
          SenderJobTitle,
          SenderInitials,
          EnclosureNumber,
          InfoBlock,
          RecipientCode,
          RecipientGender,
          ReturnAddressShortForm,
          SenderCity,
          SenderCode,
          SenderGender,
          SenderReference,
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (DateFormat);
               GNATCOM.IInterface.Free (PageDesign);
               GNATCOM.IInterface.Free (RecipientName);
               GNATCOM.IInterface.Free (RecipientAddress);
               GNATCOM.IInterface.Free (Salutation);
               GNATCOM.IInterface.Free (RecipientReference);
               GNATCOM.IInterface.Free (MailingInstructions);
               GNATCOM.IInterface.Free (AttentionLine);
               GNATCOM.IInterface.Free (Subject);
               GNATCOM.IInterface.Free (CCList);
               GNATCOM.IInterface.Free (ReturnAddress);
               GNATCOM.IInterface.Free (SenderName);
               GNATCOM.IInterface.Free (Closing);
               GNATCOM.IInterface.Free (SenderCompany);
               GNATCOM.IInterface.Free (SenderJobTitle);
               GNATCOM.IInterface.Free (SenderInitials);

      end if;

      return RetVal;
   end CreateLetterContent;

   procedure AcceptAllRevisions
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AcceptAllRevisions
         (Pointer (This)));

   end AcceptAllRevisions;

   procedure RejectAllRevisions
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RejectAllRevisions
         (Pointer (This)));

   end RejectAllRevisions;

   procedure DetectLanguage
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DetectLanguage
         (Pointer (This)));

   end DetectLanguage;

   procedure ApplyTheme
     (This : uDocument_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyTheme
         (Pointer (This),
          Name));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end ApplyTheme;

   procedure RemoveTheme
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RemoveTheme
         (Pointer (This)));

   end RemoveTheme;

   procedure WebPagePreview
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WebPagePreview
         (Pointer (This)));

   end WebPagePreview;

   procedure ReloadAs
     (This     : uDocument_Type;
      Encoding : MsoEncoding)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReloadAs
         (Pointer (This),
          Encoding));

   end ReloadAs;

   function Get_ActiveTheme
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveTheme
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActiveTheme;

   function Get_ActiveThemeDisplayName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveThemeDisplayName
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActiveThemeDisplayName;

   function Get_Email
     (This : uDocument_Type)
     return Pointer_To_Email
   is
       RetVal : aliased Pointer_To_Email;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Email
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Email;

   function Get_Scripts
     (This : uDocument_Type)
     return Pointer_To_Scripts
   is
       RetVal : aliased Pointer_To_Scripts;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Scripts
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Scripts;

   function Get_LanguageDetected
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageDetected
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_LanguageDetected;

   procedure Put_LanguageDetected
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageDetected
         (Pointer (This),
          prop));

   end Put_LanguageDetected;

   function Get_FarEastLineBreakLanguage
     (This : uDocument_Type)
     return WdFarEastLineBreakLanguageID
   is
       RetVal : aliased WdFarEastLineBreakLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FarEastLineBreakLanguage
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FarEastLineBreakLanguage;

   procedure Put_FarEastLineBreakLanguage
     (This : uDocument_Type;
      prop : WdFarEastLineBreakLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FarEastLineBreakLanguage
         (Pointer (This),
          prop));

   end Put_FarEastLineBreakLanguage;

   function Get_Frameset
     (This : uDocument_Type)
     return Pointer_To_Frameset
   is
       RetVal : aliased Pointer_To_Frameset;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frameset
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Frameset;

   function Get_ClickAndTypeParagraphStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ClickAndTypeParagraphStyle
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ClickAndTypeParagraphStyle;

   procedure Put_ClickAndTypeParagraphStyle
     (This : uDocument_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ClickAndTypeParagraphStyle
         (Pointer (This),
          prop));

   end Put_ClickAndTypeParagraphStyle;

   function Get_HTMLProject
     (This : uDocument_Type)
     return Pointer_To_HTMLProject
   is
       RetVal : aliased Pointer_To_HTMLProject;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HTMLProject
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HTMLProject;

   function Get_WebOptions
     (This : uDocument_Type)
     return Pointer_To_WebOptions
   is
       RetVal : aliased Pointer_To_WebOptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WebOptions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_WebOptions;

   function Get_OpenEncoding
     (This : uDocument_Type)
     return MsoEncoding
   is
       RetVal : aliased MsoEncoding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OpenEncoding
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_OpenEncoding;

   function Get_SaveEncoding
     (This : uDocument_Type)
     return MsoEncoding
   is
       RetVal : aliased MsoEncoding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveEncoding
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SaveEncoding;

   procedure Put_SaveEncoding
     (This : uDocument_Type;
      prop : MsoEncoding)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SaveEncoding
         (Pointer (This),
          prop));

   end Put_SaveEncoding;

   function Get_OptimizeForWord97
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OptimizeForWord97
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_OptimizeForWord97;

   procedure Put_OptimizeForWord97
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OptimizeForWord97
         (Pointer (This),
          prop));

   end Put_OptimizeForWord97;

   function Get_VBASigned
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBASigned
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_VBASigned;

   procedure PrintOut2000
     (This                 : uDocument_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut2000
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          ActivePrinterMacGX,
          ManualDuplexPrint,
          PrintZoomColumn,
          PrintZoomRow,
          PrintZoomPaperWidth,
          PrintZoomPaperHeight));

   end PrintOut2000;

   procedure sblt
     (This : uDocument_Type;
      s    : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.sblt
         (Pointer (This),
          s));

      if Free then
               GNATCOM.IInterface.Free (s);

      end if;

   end sblt;

   procedure ConvertVietDoc
     (This           : uDocument_Type;
      CodePageOrigin : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertVietDoc
         (Pointer (This),
          CodePageOrigin));

   end ConvertVietDoc;

   procedure PrintOut
     (This                 : uDocument_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          ActivePrinterMacGX,
          ManualDuplexPrint,
          PrintZoomColumn,
          PrintZoomRow,
          PrintZoomPaperWidth,
          PrintZoomPaperHeight));

   end PrintOut;

   function Get_MailEnvelope
     (This : uDocument_Type)
     return Pointer_To_IMsoEnvelopeVB
   is
       RetVal : aliased Pointer_To_IMsoEnvelopeVB;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailEnvelope
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MailEnvelope;

   function Get_DisableFeatures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableFeatures
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisableFeatures;

   procedure Put_DisableFeatures
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableFeatures
         (Pointer (This),
          prop));

   end Put_DisableFeatures;

   function Get_DoNotEmbedSystemFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DoNotEmbedSystemFonts
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DoNotEmbedSystemFonts;

   procedure Put_DoNotEmbedSystemFonts
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DoNotEmbedSystemFonts
         (Pointer (This),
          prop));

   end Put_DoNotEmbedSystemFonts;

   function Get_Signatures
     (This : uDocument_Type)
     return Pointer_To_SignatureSet
   is
       RetVal : aliased Pointer_To_SignatureSet;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Signatures
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Signatures;

   function Get_DefaultTargetFrame
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTargetFrame
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DefaultTargetFrame;

   procedure Put_DefaultTargetFrame
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTargetFrame
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_DefaultTargetFrame;

   function Get_HTMLDivisions
     (This : uDocument_Type)
     return Pointer_To_HTMLDivisions
   is
       RetVal : aliased Pointer_To_HTMLDivisions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HTMLDivisions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HTMLDivisions;

   function Get_DisableFeaturesIntroducedAfter
     (This : uDocument_Type)
     return WdDisableFeaturesIntroducedAfter
   is
       RetVal : aliased WdDisableFeaturesIntroducedAfter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableFeaturesIntroducedAfter
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisableFeaturesIntroducedAfter;

   procedure Put_DisableFeaturesIntroducedAfter
     (This : uDocument_Type;
      prop : WdDisableFeaturesIntroducedAfter)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableFeaturesIntroducedAfter
         (Pointer (This),
          prop));

   end Put_DisableFeaturesIntroducedAfter;

   function Get_RemovePersonalInformation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RemovePersonalInformation
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_RemovePersonalInformation;

   procedure Put_RemovePersonalInformation
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RemovePersonalInformation
         (Pointer (This),
          prop));

   end Put_RemovePersonalInformation;

   function Get_SmartTags
     (This : uDocument_Type)
     return Pointer_To_SmartTags
   is
       RetVal : aliased Pointer_To_SmartTags;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SmartTags
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SmartTags;

   procedure Compare
     (This                        : uDocument_Type;
      Name                        : GNATCOM.Types.BSTR;
      AuthorName                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CompareTarget               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DetectFormatChanges         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreAllComparisonWarnings : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Compare
         (Pointer (This),
          Name,
          AuthorName,
          CompareTarget,
          DetectFormatChanges,
          IgnoreAllComparisonWarnings,
          AddToRecentFiles));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end Compare;

   procedure CheckIn
     (This        : uDocument_Type;
      SaveChanges : GNATCOM.Types.VARIANT_BOOL;
      Comments    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MakePublic  : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckIn
         (Pointer (This),
          SaveChanges,
          Comments,
          MakePublic));

   end CheckIn;

   function CanCheckin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanCheckin
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end CanCheckin;

   procedure Merge
     (This                : uDocument_Type;
      FileName            : GNATCOM.Types.BSTR;
      MergeTarget         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DetectFormatChanges : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseFormattingFrom   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Merge
         (Pointer (This),
          FileName,
          MergeTarget,
          DetectFormatChanges,
          UseFormattingFrom,
          AddToRecentFiles));

      if Free then
               GNATCOM.IInterface.Free (FileName);

      end if;

   end Merge;

   function Get_EmbedSmartTags
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmbedSmartTags
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_EmbedSmartTags;

   procedure Put_EmbedSmartTags
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmbedSmartTags
         (Pointer (This),
          prop));

   end Put_EmbedSmartTags;

   function Get_SmartTagsAsXMLProps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SmartTagsAsXMLProps
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SmartTagsAsXMLProps;

   procedure Put_SmartTagsAsXMLProps
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SmartTagsAsXMLProps
         (Pointer (This),
          prop));

   end Put_SmartTagsAsXMLProps;

   function Get_TextEncoding
     (This : uDocument_Type)
     return MsoEncoding
   is
       RetVal : aliased MsoEncoding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextEncoding
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TextEncoding;

   procedure Put_TextEncoding
     (This : uDocument_Type;
      prop : MsoEncoding)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextEncoding
         (Pointer (This),
          prop));

   end Put_TextEncoding;

   function Get_TextLineEnding
     (This : uDocument_Type)
     return WdLineEndingType
   is
       RetVal : aliased WdLineEndingType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextLineEnding
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TextLineEnding;

   procedure Put_TextLineEnding
     (This : uDocument_Type;
      prop : WdLineEndingType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextLineEnding
         (Pointer (This),
          prop));

   end Put_TextLineEnding;

   procedure SendForReview
     (This              : uDocument_Type;
      Recipients        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Subject           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowMessage       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeAttachment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SendForReview
         (Pointer (This),
          Recipients,
          Subject,
          ShowMessage,
          IncludeAttachment));

   end SendForReview;

   procedure ReplyWithChanges
     (This        : uDocument_Type;
      ShowMessage : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReplyWithChanges
         (Pointer (This),
          ShowMessage));

   end ReplyWithChanges;

   procedure EndReview
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EndReview
         (Pointer (This)));

   end EndReview;

   function Get_StyleSheets
     (This : uDocument_Type)
     return Pointer_To_StyleSheets
   is
       RetVal : aliased Pointer_To_StyleSheets;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StyleSheets
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_StyleSheets;

   function Get_DefaultTableStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTableStyle
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DefaultTableStyle;

   function Get_PasswordEncryptionProvider
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasswordEncryptionProvider
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PasswordEncryptionProvider;

   function Get_PasswordEncryptionAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasswordEncryptionAlgorithm
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PasswordEncryptionAlgorithm;

   function Get_PasswordEncryptionKeyLength
     (This : uDocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasswordEncryptionKeyLength
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PasswordEncryptionKeyLength;

   function Get_PasswordEncryptionFileProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasswordEncryptionFileProperties
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PasswordEncryptionFileProperties;

   procedure SetPasswordEncryptionOptions
     (This                             : uDocument_Type;
      PasswordEncryptionProvider       : GNATCOM.Types.BSTR;
      PasswordEncryptionAlgorithm      : GNATCOM.Types.BSTR;
      PasswordEncryptionKeyLength      : Interfaces.C.long;
      PasswordEncryptionFileProperties : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                             : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetPasswordEncryptionOptions
         (Pointer (This),
          PasswordEncryptionProvider,
          PasswordEncryptionAlgorithm,
          PasswordEncryptionKeyLength,
          PasswordEncryptionFileProperties));

      if Free then
               GNATCOM.IInterface.Free (PasswordEncryptionProvider);
               GNATCOM.IInterface.Free (PasswordEncryptionAlgorithm);

      end if;

   end SetPasswordEncryptionOptions;

   procedure RecheckSmartTags
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RecheckSmartTags
         (Pointer (This)));

   end RecheckSmartTags;

   procedure RemoveSmartTags
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RemoveSmartTags
         (Pointer (This)));

   end RemoveSmartTags;

   procedure SetDefaultTableStyle
     (This          : uDocument_Type;
      Style         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SetInTemplate : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetDefaultTableStyle
         (Pointer (This),
          Style,
          SetInTemplate));

   end SetDefaultTableStyle;

   procedure DeleteAllComments
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DeleteAllComments
         (Pointer (This)));

   end DeleteAllComments;

   procedure AcceptAllRevisionsShown
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AcceptAllRevisionsShown
         (Pointer (This)));

   end AcceptAllRevisionsShown;

   procedure RejectAllRevisionsShown
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RejectAllRevisionsShown
         (Pointer (This)));

   end RejectAllRevisionsShown;

   procedure DeleteAllCommentsShown
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DeleteAllCommentsShown
         (Pointer (This)));

   end DeleteAllCommentsShown;

   procedure ResetFormFields
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetFormFields
         (Pointer (This)));

   end ResetFormFields;

   procedure SaveAs
     (This                    : uDocument_Type;
      FileName                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileFormat              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LockComments            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePassword           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnlyRecommended     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EmbedTrueTypeFonts      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveNativePictureFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveFormsData           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveAsAOCELetter        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Encoding                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertLineBreaks        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AllowSubstitutions      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LineEnding              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddBiDiMarks            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SaveAs
         (Pointer (This),
          FileName,
          FileFormat,
          LockComments,
          Password,
          AddToRecentFiles,
          WritePassword,
          ReadOnlyRecommended,
          EmbedTrueTypeFonts,
          SaveNativePictureFormat,
          SaveFormsData,
          SaveAsAOCELetter,
          Encoding,
          InsertLineBreaks,
          AllowSubstitutions,
          LineEnding,
          AddBiDiMarks));

   end SaveAs;

   function Get_EmbedLinguisticData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmbedLinguisticData
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_EmbedLinguisticData;

   procedure Put_EmbedLinguisticData
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmbedLinguisticData
         (Pointer (This),
          prop));

   end Put_EmbedLinguisticData;

   function Get_FormattingShowFont
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormattingShowFont
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormattingShowFont;

   procedure Put_FormattingShowFont
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattingShowFont
         (Pointer (This),
          prop));

   end Put_FormattingShowFont;

   function Get_FormattingShowClear
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormattingShowClear
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormattingShowClear;

   procedure Put_FormattingShowClear
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattingShowClear
         (Pointer (This),
          prop));

   end Put_FormattingShowClear;

   function Get_FormattingShowParagraph
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormattingShowParagraph
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormattingShowParagraph;

   procedure Put_FormattingShowParagraph
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattingShowParagraph
         (Pointer (This),
          prop));

   end Put_FormattingShowParagraph;

   function Get_FormattingShowNumbering
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormattingShowNumbering
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormattingShowNumbering;

   procedure Put_FormattingShowNumbering
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattingShowNumbering
         (Pointer (This),
          prop));

   end Put_FormattingShowNumbering;

   function Get_FormattingShowFilter
     (This : uDocument_Type)
     return WdShowFilter
   is
       RetVal : aliased WdShowFilter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormattingShowFilter
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FormattingShowFilter;

   procedure Put_FormattingShowFilter
     (This : uDocument_Type;
      prop : WdShowFilter)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattingShowFilter
         (Pointer (This),
          prop));

   end Put_FormattingShowFilter;

   procedure CheckNewSmartTags
     (This : uDocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckNewSmartTags
         (Pointer (This)));

   end CheckNewSmartTags;

end winword.uDocument_Interface;

