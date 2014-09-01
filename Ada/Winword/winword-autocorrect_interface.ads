with GNATCOM.Dispinterface;

package winword.AutoCorrect_Interface is

   type AutoCorrect_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoCorrect_Type);

   function Pointer (This : AutoCorrect_Type)
     return Pointer_To_AutoCorrect;

   procedure Attach (This    : in out AutoCorrect_Type;
                     Pointer : in     Pointer_To_AutoCorrect);

   function Get_Application
     (This : AutoCorrect_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoCorrect_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoCorrect_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CorrectDays
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectDays
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CorrectInitialCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectInitialCaps
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CorrectSentenceCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectSentenceCaps
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ReplaceText
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ReplaceText
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Entries
     (This : AutoCorrect_Type)
     return Pointer_To_AutoCorrectEntries;

   function Get_FirstLetterExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_FirstLetterExceptions;

   function Get_FirstLetterAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FirstLetterAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_TwoInitialCapsExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_TwoInitialCapsExceptions;

   function Get_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CorrectCapsLock
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectCapsLock
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HangulAndAlphabetExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_HangulAndAlphabetExceptions;

   function Get_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_OtherCorrectionsExceptions
     (This : AutoCorrect_Type)
     return Pointer_To_OtherCorrectionsExceptions;

   function Get_CorrectKeyboardSetting
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectKeyboardSetting
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CorrectTableCells
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectTableCells
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.AutoCorrect_Interface;

