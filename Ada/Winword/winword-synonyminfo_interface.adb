with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.SynonymInfo_Interface is

   procedure Initialize (This : in out SynonymInfo_Type) is
   begin
      Set_IID (This, IID_SynonymInfo);
   end Initialize;

   function Pointer (This : SynonymInfo_Type)
     return Pointer_To_SynonymInfo
   is
   begin
      return To_Pointer_To_SynonymInfo (Address (This));
   end Pointer;

   procedure Attach (This    : in out SynonymInfo_Type;
                     Pointer : in     Pointer_To_SynonymInfo)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : SynonymInfo_Type)
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
     (This : SynonymInfo_Type)
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
     (This : SynonymInfo_Type)
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

   function Get_Word
     (This : SynonymInfo_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Word
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Word;

   function Get_Found
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Found
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Found;

   function Get_MeaningCount
     (This : SynonymInfo_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MeaningCount
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MeaningCount;

   function Get_MeaningList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MeaningList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MeaningList;

   function Get_PartOfSpeechList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PartOfSpeechList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PartOfSpeechList;

   function Get_SynonymList
     (This    : SynonymInfo_Type;
      Meaning : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SynonymList
         (Pointer (This),
          Meaning,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SynonymList;

   function Get_AntonymList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AntonymList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AntonymList;

   function Get_RelatedExpressionList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelatedExpressionList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelatedExpressionList;

   function Get_RelatedWordList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelatedWordList
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelatedWordList;

end winword.SynonymInfo_Interface;

