with GNATCOM.Dispinterface;

package winword.TableOfContents_Interface is

   type TableOfContents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TableOfContents_Type);

   function Pointer (This : TableOfContents_Type)
     return Pointer_To_TableOfContents;

   procedure Attach (This    : in out TableOfContents_Type;
                     Pointer : in     Pointer_To_TableOfContents);

   function Get_Application
     (This : TableOfContents_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TableOfContents_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TableOfContents_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_UseHeadingStyles
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseHeadingStyles
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_UseFields
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseFields
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_UpperHeadingLevel
     (This : TableOfContents_Type)
     return Interfaces.C.long;

   procedure Put_UpperHeadingLevel
     (This : TableOfContents_Type;
      prop : Interfaces.C.long);

   function Get_LowerHeadingLevel
     (This : TableOfContents_Type)
     return Interfaces.C.long;

   procedure Put_LowerHeadingLevel
     (This : TableOfContents_Type;
      prop : Interfaces.C.long);

   function Get_TableID
     (This : TableOfContents_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_TableID
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_HeadingStyles
     (This : TableOfContents_Type)
     return Pointer_To_HeadingStyles;

   function Get_RightAlignPageNumbers
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RightAlignPageNumbers
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_IncludePageNumbers
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludePageNumbers
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Range
     (This : TableOfContents_Type)
     return Pointer_To_uRange;

   function Get_TabLeader
     (This : TableOfContents_Type)
     return WdTabLeader;

   procedure Put_TabLeader
     (This : TableOfContents_Type;
      prop : WdTabLeader);

   procedure Delete
     (This : TableOfContents_Type);

   procedure UpdatePageNumbers
     (This : TableOfContents_Type);

   procedure Update
     (This : TableOfContents_Type);

   function Get_UseHyperlinks
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseHyperlinks
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HidePageNumbersInWeb
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfContents_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.TableOfContents_Interface;

