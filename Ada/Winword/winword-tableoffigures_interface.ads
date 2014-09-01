with GNATCOM.Dispinterface;

package winword.TableOfFigures_Interface is

   type TableOfFigures_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TableOfFigures_Type);

   function Pointer (This : TableOfFigures_Type)
     return Pointer_To_TableOfFigures;

   procedure Attach (This    : in out TableOfFigures_Type;
                     Pointer : in     Pointer_To_TableOfFigures);

   function Get_Application
     (This : TableOfFigures_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TableOfFigures_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TableOfFigures_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Caption
     (This : TableOfFigures_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Caption
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IncludeLabel
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeLabel
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RightAlignPageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RightAlignPageNumbers
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_UseHeadingStyles
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseHeadingStyles
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_LowerHeadingLevel
     (This : TableOfFigures_Type)
     return Interfaces.C.long;

   procedure Put_LowerHeadingLevel
     (This : TableOfFigures_Type;
      prop : Interfaces.C.long);

   function Get_UpperHeadingLevel
     (This : TableOfFigures_Type)
     return Interfaces.C.long;

   procedure Put_UpperHeadingLevel
     (This : TableOfFigures_Type;
      prop : Interfaces.C.long);

   function Get_IncludePageNumbers
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludePageNumbers
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Range
     (This : TableOfFigures_Type)
     return Pointer_To_uRange;

   function Get_UseFields
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseFields
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_TableID
     (This : TableOfFigures_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_TableID
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_HeadingStyles
     (This : TableOfFigures_Type)
     return Pointer_To_HeadingStyles;

   function Get_TabLeader
     (This : TableOfFigures_Type)
     return WdTabLeader;

   procedure Put_TabLeader
     (This : TableOfFigures_Type;
      prop : WdTabLeader);

   procedure Delete
     (This : TableOfFigures_Type);

   procedure UpdatePageNumbers
     (This : TableOfFigures_Type);

   procedure Update
     (This : TableOfFigures_Type);

   function Get_UseHyperlinks
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseHyperlinks
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HidePageNumbersInWeb
     (This : TableOfFigures_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HidePageNumbersInWeb
     (This : TableOfFigures_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.TableOfFigures_Interface;

