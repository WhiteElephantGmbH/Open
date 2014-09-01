package body winword.ListLevel_Object is

   function Get_Index
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_Index);
   end Get_Index;

   function Get_NumberFormat
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_NumberFormat);
   end Get_NumberFormat;

   procedure Put_NumberFormat
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_NumberFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberFormat;

   function Get_TrailingCharacter
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_TrailingCharacter);
   end Get_TrailingCharacter;

   procedure Put_TrailingCharacter
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_TrailingCharacter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TrailingCharacter;

   function Get_NumberStyle
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_NumberPosition
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_NumberPosition);
   end Get_NumberPosition;

   procedure Put_NumberPosition
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_NumberPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberPosition;

   function Get_Alignment
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_TextPosition
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_TextPosition);
   end Get_TextPosition;

   procedure Put_TextPosition
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_TextPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextPosition;

   function Get_TabPosition
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_TabPosition);
   end Get_TabPosition;

   procedure Put_TabPosition
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_TabPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabPosition;

   function Get_ResetOnHigherOld
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_ResetOnHigherOld);
   end Get_ResetOnHigherOld;

   procedure Put_ResetOnHigherOld
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_ResetOnHigherOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ResetOnHigherOld;

   function Get_StartAt
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_StartAt);
   end Get_StartAt;

   procedure Put_StartAt
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_StartAt,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartAt;

   function Get_LinkedStyle
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_LinkedStyle);
   end Get_LinkedStyle;

   procedure Put_LinkedStyle
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_LinkedStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LinkedStyle;

   function Get_Font
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

   function Get_Application
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_Parent);
   end Get_Parent;

   function Get_ResetOnHigher
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_ResetOnHigher);
   end Get_ResetOnHigher;

   procedure Put_ResetOnHigher
     (This : ListLevel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListLevel_Put_ResetOnHigher,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ResetOnHigher;

   function Get_PictureBullet
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevel_Get_PictureBullet);
   end Get_PictureBullet;

   function ApplyPictureBullet
     (This     : ListLevel_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListLevel_ApplyPictureBullet,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end ApplyPictureBullet;

end winword.ListLevel_Object;

