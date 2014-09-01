with GNATCOM.Dispinterface;

package winword.AutoCorrect_Object is

   type AutoCorrect_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CorrectDays
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectDays
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CorrectInitialCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectInitialCaps
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CorrectSentenceCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectSentenceCaps
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReplaceText
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReplaceText
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Entries
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FirstLetterExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FirstLetterAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FirstLetterAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TwoInitialCapsExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CorrectCapsLock
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectCapsLock
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HangulAndAlphabetExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OtherCorrectionsExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CorrectKeyboardSetting
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectKeyboardSetting
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CorrectTableCells
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectTableCells
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.AutoCorrect_Object;

