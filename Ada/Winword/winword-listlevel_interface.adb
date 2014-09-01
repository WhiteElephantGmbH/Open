with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.ListLevel_Interface is

   procedure Initialize (This : in out ListLevel_Type) is
   begin
      Set_IID (This, IID_ListLevel);
   end Initialize;

   function Pointer (This : ListLevel_Type)
     return Pointer_To_ListLevel
   is
   begin
      return To_Pointer_To_ListLevel (Address (This));
   end Pointer;

   procedure Attach (This    : in out ListLevel_Type;
                     Pointer : in     Pointer_To_ListLevel)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Index
     (This : ListLevel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_NumberFormat
     (This : ListLevel_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberFormat;

   procedure Put_NumberFormat
     (This : ListLevel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberFormat
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NumberFormat;

   function Get_TrailingCharacter
     (This : ListLevel_Type)
     return WdTrailingCharacter
   is
       RetVal : aliased WdTrailingCharacter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TrailingCharacter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TrailingCharacter;

   procedure Put_TrailingCharacter
     (This : ListLevel_Type;
      prop : WdTrailingCharacter)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TrailingCharacter
         (Pointer (This),
          prop));

   end Put_TrailingCharacter;

   function Get_NumberStyle
     (This : ListLevel_Type)
     return WdListNumberStyle
   is
       RetVal : aliased WdListNumberStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : ListLevel_Type;
      prop : WdListNumberStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberStyle
         (Pointer (This),
          prop));

   end Put_NumberStyle;

   function Get_NumberPosition
     (This : ListLevel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberPosition;

   procedure Put_NumberPosition
     (This : ListLevel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberPosition
         (Pointer (This),
          prop));

   end Put_NumberPosition;

   function Get_Alignment
     (This : ListLevel_Type)
     return WdListLevelAlignment
   is
       RetVal : aliased WdListLevelAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : ListLevel_Type;
      prop : WdListLevelAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_TextPosition
     (This : ListLevel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextPosition;

   procedure Put_TextPosition
     (This : ListLevel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextPosition
         (Pointer (This),
          prop));

   end Put_TextPosition;

   function Get_TabPosition
     (This : ListLevel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TabPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TabPosition;

   procedure Put_TabPosition
     (This : ListLevel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabPosition
         (Pointer (This),
          prop));

   end Put_TabPosition;

   function Get_ResetOnHigherOld
     (This : ListLevel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ResetOnHigherOld
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ResetOnHigherOld;

   procedure Put_ResetOnHigherOld
     (This : ListLevel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ResetOnHigherOld
         (Pointer (This),
          prop));

   end Put_ResetOnHigherOld;

   function Get_StartAt
     (This : ListLevel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StartAt
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StartAt;

   procedure Put_StartAt
     (This : ListLevel_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartAt
         (Pointer (This),
          prop));

   end Put_StartAt;

   function Get_LinkedStyle
     (This : ListLevel_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinkedStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinkedStyle;

   procedure Put_LinkedStyle
     (This : ListLevel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LinkedStyle
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_LinkedStyle;

   function Get_Font
     (This : ListLevel_Type)
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
     (This : ListLevel_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

   function Get_Application
     (This : ListLevel_Type)
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
     (This : ListLevel_Type)
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
     (This : ListLevel_Type)
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

   function Get_ResetOnHigher
     (This : ListLevel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ResetOnHigher
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ResetOnHigher;

   procedure Put_ResetOnHigher
     (This : ListLevel_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ResetOnHigher
         (Pointer (This),
          prop));

   end Put_ResetOnHigher;

   function Get_PictureBullet
     (This : ListLevel_Type)
     return Pointer_To_InlineShape
   is
       RetVal : aliased Pointer_To_InlineShape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PictureBullet
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PictureBullet;

   function ApplyPictureBullet
     (This     : ListLevel_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_InlineShape
   is
       RetVal : aliased Pointer_To_InlineShape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyPictureBullet
         (Pointer (This),
          FileName,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

      return RetVal;
   end ApplyPictureBullet;

end winword.ListLevel_Interface;

