with GNATCOM.Dispinterface;

package winword.TextRetrievalMode_Object is

   type TextRetrievalMode_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ViewType
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ViewType
     (This : TextRetrievalMode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Duplicate
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IncludeHiddenText
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeHiddenText
     (This : TextRetrievalMode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludeFieldCodes
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeFieldCodes
     (This : TextRetrievalMode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TextRetrievalMode_Object;

