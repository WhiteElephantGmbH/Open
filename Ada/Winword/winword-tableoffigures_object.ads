with GNATCOM.Dispinterface;

package winword.TableOfFigures_Object is

   type TableOfFigures_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Caption
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Caption
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludeLabel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeLabel
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightAlignPageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightAlignPageNumbers
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseHeadingStyles
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseHeadingStyles
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LowerHeadingLevel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LowerHeadingLevel
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UpperHeadingLevel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpperHeadingLevel
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludePageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludePageNumbers
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UseFields
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseFields
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TableID
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TableID
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeadingStyles
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TabLeader
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabLeader
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : TableOfFigures_Type);

   procedure UpdatePageNumbers
     (This : TableOfFigures_Type);

   procedure Update
     (This : TableOfFigures_Type);

   function Get_UseHyperlinks
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseHyperlinks
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HidePageNumbersInWeb
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TableOfFigures_Object;

