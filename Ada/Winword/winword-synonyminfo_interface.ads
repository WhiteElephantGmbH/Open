with GNATCOM.Dispinterface;

package winword.SynonymInfo_Interface is

   type SynonymInfo_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SynonymInfo_Type);

   function Pointer (This : SynonymInfo_Type)
     return Pointer_To_SynonymInfo;

   procedure Attach (This    : in out SynonymInfo_Type;
                     Pointer : in     Pointer_To_SynonymInfo);

   function Get_Application
     (This : SynonymInfo_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : SynonymInfo_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : SynonymInfo_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Word
     (This : SynonymInfo_Type)
     return GNATCOM.Types.BSTR;

   function Get_Found
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_MeaningCount
     (This : SynonymInfo_Type)
     return Interfaces.C.long;

   function Get_MeaningList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PartOfSpeechList
     (This : SynonymInfo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SynonymList
     (This    : SynonymInfo_Type;
      Meaning : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
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

end winword.SynonymInfo_Interface;

