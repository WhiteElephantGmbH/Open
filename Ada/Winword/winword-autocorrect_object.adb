package body winword.AutoCorrect_Object is

   function Get_Application
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_Parent);
   end Get_Parent;

   function Get_CorrectDays
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectDays);
   end Get_CorrectDays;

   procedure Put_CorrectDays
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectDays,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectDays;

   function Get_CorrectInitialCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectInitialCaps);
   end Get_CorrectInitialCaps;

   procedure Put_CorrectInitialCaps
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectInitialCaps,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectInitialCaps;

   function Get_CorrectSentenceCaps
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectSentenceCaps);
   end Get_CorrectSentenceCaps;

   procedure Put_CorrectSentenceCaps
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectSentenceCaps,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectSentenceCaps;

   function Get_ReplaceText
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_ReplaceText);
   end Get_ReplaceText;

   procedure Put_ReplaceText
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_ReplaceText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReplaceText;

   function Get_Entries
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_Entries);
   end Get_Entries;

   function Get_FirstLetterExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_FirstLetterExceptions);
   end Get_FirstLetterExceptions;

   function Get_FirstLetterAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_FirstLetterAutoAdd);
   end Get_FirstLetterAutoAdd;

   procedure Put_FirstLetterAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_FirstLetterAutoAdd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FirstLetterAutoAdd;

   function Get_TwoInitialCapsExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_TwoInitialCapsExceptions);
   end Get_TwoInitialCapsExceptions;

   function Get_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_TwoInitialCapsAutoAdd);
   end Get_TwoInitialCapsAutoAdd;

   procedure Put_TwoInitialCapsAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_TwoInitialCapsAutoAdd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TwoInitialCapsAutoAdd;

   function Get_CorrectCapsLock
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectCapsLock);
   end Get_CorrectCapsLock;

   procedure Put_CorrectCapsLock
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectCapsLock,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectCapsLock;

   function Get_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectHangulAndAlphabet);
   end Get_CorrectHangulAndAlphabet;

   procedure Put_CorrectHangulAndAlphabet
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectHangulAndAlphabet,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectHangulAndAlphabet;

   function Get_HangulAndAlphabetExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_HangulAndAlphabetExceptions);
   end Get_HangulAndAlphabetExceptions;

   function Get_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_HangulAndAlphabetAutoAdd);
   end Get_HangulAndAlphabetAutoAdd;

   procedure Put_HangulAndAlphabetAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_HangulAndAlphabetAutoAdd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HangulAndAlphabetAutoAdd;

   function Get_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_ReplaceTextFromSpellingChecker);
   end Get_ReplaceTextFromSpellingChecker;

   procedure Put_ReplaceTextFromSpellingChecker
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_ReplaceTextFromSpellingChecker,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReplaceTextFromSpellingChecker;

   function Get_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_OtherCorrectionsAutoAdd);
   end Get_OtherCorrectionsAutoAdd;

   procedure Put_OtherCorrectionsAutoAdd
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_OtherCorrectionsAutoAdd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OtherCorrectionsAutoAdd;

   function Get_OtherCorrectionsExceptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_OtherCorrectionsExceptions);
   end Get_OtherCorrectionsExceptions;

   function Get_CorrectKeyboardSetting
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectKeyboardSetting);
   end Get_CorrectKeyboardSetting;

   procedure Put_CorrectKeyboardSetting
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectKeyboardSetting,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectKeyboardSetting;

   function Get_CorrectTableCells
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_CorrectTableCells);
   end Get_CorrectTableCells;

   procedure Put_CorrectTableCells
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_CorrectTableCells,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectTableCells;

   function Get_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrect_Get_DisplayAutoCorrectOptions);
   end Get_DisplayAutoCorrectOptions;

   procedure Put_DisplayAutoCorrectOptions
     (This : AutoCorrect_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrect_Put_DisplayAutoCorrectOptions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayAutoCorrectOptions;

end winword.AutoCorrect_Object;

