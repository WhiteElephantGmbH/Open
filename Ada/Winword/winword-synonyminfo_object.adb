package body winword.SynonymInfo_Object is

   function Get_Application
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_Parent);
   end Get_Parent;

   function Get_Word
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_Word);
   end Get_Word;

   function Get_Found
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_Found);
   end Get_Found;

   function Get_MeaningCount
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_MeaningCount);
   end Get_MeaningCount;

   function Get_MeaningList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_MeaningList);
   end Get_MeaningList;

   function Get_PartOfSpeechList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_PartOfSpeechList);
   end Get_PartOfSpeechList;

   function Get_SynonymList
     (This    : SynonymInfo_Type;
      Meaning : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         SynonymInfo_Get_SynonymList,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Meaning),
         Free);
   end Get_SynonymList;

   function Get_AntonymList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_AntonymList);
   end Get_AntonymList;

   function Get_RelatedExpressionList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_RelatedExpressionList);
   end Get_RelatedExpressionList;

   function Get_RelatedWordList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SynonymInfo_Get_RelatedWordList);
   end Get_RelatedWordList;

end winword.SynonymInfo_Object;

