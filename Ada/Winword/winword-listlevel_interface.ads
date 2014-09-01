with GNATCOM.Dispinterface;

package winword.ListLevel_Interface is

   type ListLevel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListLevel_Type);

   function Pointer (This : ListLevel_Type)
     return Pointer_To_ListLevel;

   procedure Attach (This    : in out ListLevel_Type;
                     Pointer : in     Pointer_To_ListLevel);

   function Get_Index
     (This : ListLevel_Type)
     return Interfaces.C.long;

   function Get_NumberFormat
     (This : ListLevel_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NumberFormat
     (This : ListLevel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_TrailingCharacter
     (This : ListLevel_Type)
     return WdTrailingCharacter;

   procedure Put_TrailingCharacter
     (This : ListLevel_Type;
      prop : WdTrailingCharacter);

   function Get_NumberStyle
     (This : ListLevel_Type)
     return WdListNumberStyle;

   procedure Put_NumberStyle
     (This : ListLevel_Type;
      prop : WdListNumberStyle);

   function Get_NumberPosition
     (This : ListLevel_Type)
     return Interfaces.C.C_float;

   procedure Put_NumberPosition
     (This : ListLevel_Type;
      prop : Interfaces.C.C_float);

   function Get_Alignment
     (This : ListLevel_Type)
     return WdListLevelAlignment;

   procedure Put_Alignment
     (This : ListLevel_Type;
      prop : WdListLevelAlignment);

   function Get_TextPosition
     (This : ListLevel_Type)
     return Interfaces.C.C_float;

   procedure Put_TextPosition
     (This : ListLevel_Type;
      prop : Interfaces.C.C_float);

   function Get_TabPosition
     (This : ListLevel_Type)
     return Interfaces.C.C_float;

   procedure Put_TabPosition
     (This : ListLevel_Type;
      prop : Interfaces.C.C_float);

   function Get_ResetOnHigherOld
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ResetOnHigherOld
     (This : ListLevel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_StartAt
     (This : ListLevel_Type)
     return Interfaces.C.long;

   procedure Put_StartAt
     (This : ListLevel_Type;
      prop : Interfaces.C.long);

   function Get_LinkedStyle
     (This : ListLevel_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_LinkedStyle
     (This : ListLevel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Font
     (This : ListLevel_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : ListLevel_Type;
      prop : Pointer_To_uFont);

   function Get_Application
     (This : ListLevel_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListLevel_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListLevel_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ResetOnHigher
     (This : ListLevel_Type)
     return Interfaces.C.long;

   procedure Put_ResetOnHigher
     (This : ListLevel_Type;
      prop : Interfaces.C.long);

   function Get_PictureBullet
     (This : ListLevel_Type)
     return Pointer_To_InlineShape;

   function ApplyPictureBullet
     (This     : ListLevel_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_InlineShape;

end winword.ListLevel_Interface;

