with GNATCOM.Dispinterface;

package winword.SynonymInfo_Object is

   type SynonymInfo_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Word
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Found
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MeaningCount
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MeaningList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PartOfSpeechList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SynonymList
     (This    : SynonymInfo_Type;
      Meaning : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_AntonymList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RelatedExpressionList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RelatedWordList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

end winword.SynonymInfo_Object;

