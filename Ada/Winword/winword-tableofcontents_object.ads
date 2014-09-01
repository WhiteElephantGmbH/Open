with GNATCOM.Dispinterface;

package winword.TableOfContents_Object is

   type TableOfContents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UseHeadingStyles
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseHeadingStyles
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseFields
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseFields
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UpperHeadingLevel
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpperHeadingLevel
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LowerHeadingLevel
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LowerHeadingLevel
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TableID
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TableID
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeadingStyles
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RightAlignPageNumbers
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightAlignPageNumbers
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludePageNumbers
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludePageNumbers
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TabLeader
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabLeader
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : TableOfContents_Type);

   procedure UpdatePageNumbers
     (This : TableOfContents_Type);

   procedure Update
     (This : TableOfContents_Type);

   function Get_UseHyperlinks
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseHyperlinks
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HidePageNumbersInWeb
     (This : TableOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TableOfContents_Object;

