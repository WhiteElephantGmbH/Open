with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Endnotes_Interface is

   procedure Initialize (This : in out Endnotes_Type) is
   begin
      Set_IID (This, IID_Endnotes);
   end Initialize;

   function Pointer (This : Endnotes_Type)
     return Pointer_To_Endnotes
   is
   begin
      return To_Pointer_To_Endnotes (Address (This));
   end Pointer;

   procedure Attach (This    : in out Endnotes_Type;
                     Pointer : in     Pointer_To_Endnotes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
     return WdEndnoteLocation
   is
       RetVal : aliased WdEndnoteLocation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Location
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Location;

   procedure Put_Location
     (This : Endnotes_Type;
      prop : WdEndnoteLocation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Location
         (Pointer (This),
          prop));

   end Put_Location;

   function Get_NumberStyle
     (This : Endnotes_Type)
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
     (This : Endnotes_Type;
      prop : WdNoteNumberStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberStyle
         (Pointer (This),
          prop));

   end Put_NumberStyle;

   function Get_StartingNumber
     (This : Endnotes_Type)
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
     (This : Endnotes_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartingNumber
         (Pointer (This),
          prop));

   end Put_StartingNumber;

   function Get_NumberingRule
     (This : Endnotes_Type)
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
     (This : Endnotes_Type;
      prop : WdNumberingRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberingRule
         (Pointer (This),
          prop));

   end Put_NumberingRule;

   function Get_Separator
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
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
     (This : Endnotes_Type)
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
     (This  : Endnotes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Endnote
   is
       RetVal : aliased Pointer_To_Endnote;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This      : Endnotes_Type;
      uRange    : Pointer_To_uRange;
      Reference : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Text      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Endnote
   is
       RetVal : aliased Pointer_To_Endnote;
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
     (This : Endnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Convert
         (Pointer (This)));

   end Convert;

   procedure SwapWithFootnotes
     (This : Endnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SwapWithFootnotes
         (Pointer (This)));

   end SwapWithFootnotes;

   procedure ResetSeparator
     (This : Endnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetSeparator
         (Pointer (This)));

   end ResetSeparator;

   procedure ResetContinuationSeparator
     (This : Endnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetContinuationSeparator
         (Pointer (This)));

   end ResetContinuationSeparator;

   procedure ResetContinuationNotice
     (This : Endnotes_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetContinuationNotice
         (Pointer (This)));

   end ResetContinuationNotice;

end winword.Endnotes_Interface;

