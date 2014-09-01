with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Footnotes_Interface is

   procedure Initialize (This : in out Footnotes_Type) is
   begin
      Set_IID (This, IID_Footnotes);
   end Initialize;

   function Pointer (This : Footnotes_Type)
     return Pointer_To_Footnotes
   is
   begin
      return To_Pointer_To_Footnotes (Address (This));
   end Pointer;

   procedure Attach (This    : in out Footnotes_Type;
                     Pointer : in     Pointer_To_Footnotes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Footnotes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : Footnotes_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_Application
     (This : Footnotes_Type)
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
     (This : Footnotes_Type)
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
     (This : Footnotes_Type)
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

   function Get_Location
     (This : Footnotes_Type)
     return WdFootnoteLocation
   is
       RetVal : aliased WdFootnoteLocation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Location
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Location;

   procedure Put_Location
     (This : Footnotes_Type;
      prop : WdFootnoteLocation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Location
         (Pointer (This),
          prop));

   end Put_Location;

   function Get_NumberStyle
     (This : Footnotes_Type)
     return WdNoteNumberStyle
   is
       RetVal : aliased WdNoteNumberStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : Footnotes_Type;
      prop : WdNoteNumberStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberStyle
         (Pointer (This),
          prop));

   end Put_NumberStyle;

   function Get_StartingNumber
     (This : Footnotes_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StartingNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : Footnotes_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartingNumber
         (Pointer (This),
          prop));

   end Put_StartingNumber;

   function Get_NumberingRule
     (This : Footnotes_Type)
     return WdNumberingRule
   is
       RetVal : aliased WdNumberingRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberingRule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberingRule;

   procedure Put_NumberingRule
     (This : Footnotes_Type;
      prop : WdNumberingRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberingRule
         (Pointer (This),
          prop));

   end Put_NumberingRule;

   function Get_Separator
     (This : Footnotes_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Separator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Separator;

   function Get_ContinuationSeparator
     (This : Footnotes_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ContinuationSeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ContinuationSeparator;

   function Get_ContinuationNotice
     (This : Footnotes_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ContinuationNotice
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ContinuationNotice;

   function Item
     (This  : Footnotes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Footnote
   is
       RetVal : aliased Pointer_To_Footnote;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This      : Footnotes_Type;
      uRange    : Pointer_To_uRange;
      Reference : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Text      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Footnote
   is
       RetVal : aliased Pointer_To_Footnote;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          Reference,
          Text,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure Convert
     (This : Footnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Convert
         (Pointer (This)));

   end Convert;

   procedure SwapWithEndnotes
     (This : Footnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SwapWithEndnotes
         (Pointer (This)));

   end SwapWithEndnotes;

   procedure ResetSeparator
     (This : Footnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetSeparator
         (Pointer (This)));

   end ResetSeparator;

   procedure ResetContinuationSeparator
     (This : Footnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetContinuationSeparator
         (Pointer (This)));

   end ResetContinuationSeparator;

   procedure ResetContinuationNotice
     (This : Footnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetContinuationNotice
         (Pointer (This)));

   end ResetContinuationNotice;

end winword.Footnotes_Interface;

