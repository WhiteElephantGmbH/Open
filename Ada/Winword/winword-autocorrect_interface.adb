with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.AutoCorrect_Interface is

   procedure Initialize (This : in out AutoCorrect_Type) is
   begin
      Set_IID (This, IID_AutoCorrect);
   end Initialize;

   function Pointer (This : AutoCorrect_Type)
     return Pointer_To_AutoCorrect
   is
   begin
      return To_Pointer_To_AutoCorrect (Address (This));
   end Pointer;

   procedure Attach (This    : in out AutoCorrect_Type;
                     Pointer : in     Pointer_To_AutoCorrect)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : AutoCorrect_Type)
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
     (This : AutoCorrect_Type)
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
     (This : AutoCorrect_Type)
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

   function Get_CorrectDays
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectDays
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectDays;

   procedure Put_CorrectDays
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectDays
         (Pointer (This),
          prop));

   end Put_CorrectDays;

   function Get_CorrectInitialCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectInitialCaps
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectInitialCaps;

   procedure Put_CorrectInitialCaps
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectInitialCaps
         (Pointer (This),
          prop));

   end Put_CorrectInitialCaps;

   function Get_CorrectSentenceCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectSentenceCaps
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectSentenceCaps;

   procedure Put_CorrectSentenceCaps
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectSentenceCaps
         (Pointer (This),
          prop));

   end Put_CorrectSentenceCaps;

   function Get_ReplaceText
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReplaceText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReplaceText;

   procedure Put_ReplaceText
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReplaceText
         (Pointer (This),
          prop));

   end Put_ReplaceText;

   function Get_Entries
     (This : AutoCorrect_Type)
     return Pointer_To_AutoCorrectEntries
   is
       RetVal : aliased Pointer_To_AutoCorrectEntries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Entries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Entries;

   function Get_FirstLetterExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_FirstLetterExceptions
   is
       RetVal : aliased Pointer_To_FirstLetterExceptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FirstLetterExceptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FirstLetterExceptions;

   function Get_FirstLetterAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FirstLetterAutoAdd
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FirstLetterAutoAdd;

   procedure Put_FirstLetterAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FirstLetterAutoAdd
         (Pointer (This),
          prop));

   end Put_FirstLetterAutoAdd;

   function Get_TwoInitialCapsExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_TwoInitialCapsExceptions
   is
       RetVal : aliased Pointer_To_TwoInitialCapsExceptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TwoInitialCapsExceptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TwoInitialCapsExceptions;

   function Get_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TwoInitialCapsAutoAdd
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TwoInitialCapsAutoAdd;

   procedure Put_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TwoInitialCapsAutoAdd
         (Pointer (This),
          prop));

   end Put_TwoInitialCapsAutoAdd;

   function Get_CorrectCapsLock
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectCapsLock
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectCapsLock;

   procedure Put_CorrectCapsLock
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectCapsLock
         (Pointer (This),
          prop));

   end Put_CorrectCapsLock;

   function Get_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectHangulAndAlphabet
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectHangulAndAlphabet;

   procedure Put_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectHangulAndAlphabet
         (Pointer (This),
          prop));

   end Put_CorrectHangulAndAlphabet;

   function Get_HangulAndAlphabetExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_HangulAndAlphabetExceptions
   is
       RetVal : aliased Pointer_To_HangulAndAlphabetExceptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HangulAndAlphabetExceptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HangulAndAlphabetExceptions;

   function Get_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HangulAndAlphabetAutoAdd
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HangulAndAlphabetAutoAdd;

   procedure Put_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HangulAndAlphabetAutoAdd
         (Pointer (This),
          prop));

   end Put_HangulAndAlphabetAutoAdd;

   function Get_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReplaceTextFromSpellingChecker
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReplaceTextFromSpellingChecker;

   procedure Put_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReplaceTextFromSpellingChecker
         (Pointer (This),
          prop));

   end Put_ReplaceTextFromSpellingChecker;

   function Get_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OtherCorrectionsAutoAdd
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OtherCorrectionsAutoAdd;

   procedure Put_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OtherCorrectionsAutoAdd
         (Pointer (This),
          prop));

   end Put_OtherCorrectionsAutoAdd;

   function Get_OtherCorrectionsExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_OtherCorrectionsExceptions
   is
       RetVal : aliased Pointer_To_OtherCorrectionsExceptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OtherCorrectionsExceptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OtherCorrectionsExceptions;

   function Get_CorrectKeyboardSetting
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectKeyboardSetting
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectKeyboardSetting;

   procedure Put_CorrectKeyboardSetting
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectKeyboardSetting
         (Pointer (This),
          prop));

   end Put_CorrectKeyboardSetting;

   function Get_CorrectTableCells
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectTableCells
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectTableCells;

   procedure Put_CorrectTableCells
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectTableCells
         (Pointer (This),
          prop));

   end Put_CorrectTableCells;

   function Get_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayAutoCorrectOptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayAutoCorrectOptions;

   procedure Put_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayAutoCorrectOptions
         (Pointer (This),
          prop));

   end Put_DisplayAutoCorrectOptions;

end winword.AutoCorrect_Interface;

