with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CaptionLabel_Interface is

   procedure Initialize (This : in out CaptionLabel_Type) is
   begin
      Set_IID (This, IID_CaptionLabel);
   end Initialize;

   function Pointer (This : CaptionLabel_Type)
     return Pointer_To_CaptionLabel
   is
   begin
      return To_Pointer_To_CaptionLabel (Address (This));
   end Pointer;

   procedure Attach (This    : in out CaptionLabel_Type;
                     Pointer : in     Pointer_To_CaptionLabel)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : CaptionLabel_Type)
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
     (This : CaptionLabel_Type)
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
     (This : CaptionLabel_Type)
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

   function Get_Name
     (This : CaptionLabel_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_BuiltIn
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltIn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuiltIn;

   function Get_ID
     (This : CaptionLabel_Type)
     return WdCaptionLabelID
   is
       RetVal : aliased WdCaptionLabelID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ID;

   function Get_IncludeChapterNumber
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeChapterNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeChapterNumber;

   procedure Put_IncludeChapterNumber
     (This : CaptionLabel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeChapterNumber
         (Pointer (This),
          prop));

   end Put_IncludeChapterNumber;

   function Get_NumberStyle
     (This : CaptionLabel_Type)
     return WdCaptionNumberStyle
   is
       RetVal : aliased WdCaptionNumberStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : CaptionLabel_Type;
      prop : WdCaptionNumberStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberStyle
         (Pointer (This),
          prop));

   end Put_NumberStyle;

   function Get_ChapterStyleLevel
     (This : CaptionLabel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ChapterStyleLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ChapterStyleLevel;

   procedure Put_ChapterStyleLevel
     (This : CaptionLabel_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ChapterStyleLevel
         (Pointer (This),
          prop));

   end Put_ChapterStyleLevel;

   function Get_Separator
     (This : CaptionLabel_Type)
     return WdSeparatorType
   is
       RetVal : aliased WdSeparatorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Separator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Separator;

   procedure Put_Separator
     (This : CaptionLabel_Type;
      prop : WdSeparatorType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Separator
         (Pointer (This),
          prop));

   end Put_Separator;

   function Get_Position
     (This : CaptionLabel_Type)
     return WdCaptionPosition
   is
       RetVal : aliased WdCaptionPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Position
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Position;

   procedure Put_Position
     (This : CaptionLabel_Type;
      prop : WdCaptionPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Position
         (Pointer (This),
          prop));

   end Put_Position;

   procedure Delete
     (This : CaptionLabel_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.CaptionLabel_Interface;

