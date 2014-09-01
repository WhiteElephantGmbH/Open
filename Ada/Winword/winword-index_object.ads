with GNATCOM.Dispinterface;

package winword.Index_Object is

   type Index_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HeadingSeparator
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeadingSeparator
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightAlignPageNumbers
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightAlignPageNumbers
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberOfColumns
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberOfColumns
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TabLeader
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabLeader
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AccentedLetters
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AccentedLetters
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SortBy
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SortBy
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Filter
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Filter
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : Index_Type);

   procedure Update
     (This : Index_Type);

   function Get_IndexLanguage
     (This : Index_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IndexLanguage
     (This : Index_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Index_Object;

