with GNATCOM.Dispinterface;

package winword.CaptionLabel_Object is

   type CaptionLabel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuiltIn
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ID
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IncludeChapterNumber
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeChapterNumber
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NumberStyle
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ChapterStyleLevel
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ChapterStyleLevel
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Separator
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Separator
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Position
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Position
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : CaptionLabel_Type);

end winword.CaptionLabel_Object;

