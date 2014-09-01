with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Replacement_Interface is

   procedure Initialize (This : in out Replacement_Type) is
   begin
      Set_IID (This, IID_Replacement);
   end Initialize;

   function Pointer (This : Replacement_Type)
     return Pointer_To_Replacement
   is
   begin
      return To_Pointer_To_Replacement (Address (This));
   end Pointer;

   procedure Attach (This    : in out Replacement_Type;
                     Pointer : in     Pointer_To_Replacement)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Replacement_Type)
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
     (This : Replacement_Type)
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
     (This : Replacement_Type)
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

   function Get_Font
     (This : Replacement_Type)
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
     (This : Replacement_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

   function Get_ParagraphFormat
     (This : Replacement_Type)
     return Pointer_To_uParagraphFormat
   is
       RetVal : aliased Pointer_To_uParagraphFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ParagraphFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Replacement_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ParagraphFormat
         (Pointer (This),
          prop));

   end Put_ParagraphFormat;

   function Get_Style
     (This : Replacement_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

   procedure Put_Style
     (This : Replacement_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_Text
     (This : Replacement_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Text
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Text;

   procedure Put_Text
     (This : Replacement_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Text
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Text;

   function Get_LanguageID
     (This : Replacement_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Replacement_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_Highlight
     (This : Replacement_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Highlight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Highlight;

   procedure Put_Highlight
     (This : Replacement_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Highlight
         (Pointer (This),
          prop));

   end Put_Highlight;

   function Get_Frame
     (This : Replacement_Type)
     return Pointer_To_Frame
   is
       RetVal : aliased Pointer_To_Frame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frame
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Frame;

   function Get_LanguageIDFarEast
     (This : Replacement_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageIDFarEast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Replacement_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDFarEast
         (Pointer (This),
          prop));

   end Put_LanguageIDFarEast;

   procedure ClearFormatting
     (This : Replacement_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearFormatting
         (Pointer (This)));

   end ClearFormatting;

   function Get_NoProofing
     (This : Replacement_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoProofing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Replacement_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoProofing
         (Pointer (This),
          prop));

   end Put_NoProofing;

end winword.Replacement_Interface;

