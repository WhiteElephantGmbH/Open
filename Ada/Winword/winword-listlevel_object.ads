with GNATCOM.Dispinterface;

package winword.ListLevel_Object is

   type ListLevel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Index
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NumberFormat
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberFormat
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TrailingCharacter
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TrailingCharacter
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberStyle
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberPosition
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberPosition
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextPosition
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextPosition
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TabPosition
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabPosition
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ResetOnHigherOld
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ResetOnHigherOld
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartAt
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartAt
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LinkedStyle
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LinkedStyle
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Font
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Application
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ResetOnHigher
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ResetOnHigher
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PictureBullet
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT;

   function ApplyPictureBullet
     (This     : ListLevel_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ListLevel_Object;

