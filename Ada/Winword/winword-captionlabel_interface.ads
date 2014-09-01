with GNATCOM.Dispinterface;

package winword.CaptionLabel_Interface is

   type CaptionLabel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CaptionLabel_Type);

   function Pointer (This : CaptionLabel_Type)
     return Pointer_To_CaptionLabel;

   procedure Attach (This    : in out CaptionLabel_Type;
                     Pointer : in     Pointer_To_CaptionLabel);

   function Get_Application
     (This : CaptionLabel_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CaptionLabel_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CaptionLabel_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : CaptionLabel_Type)
     return GNATCOM.Types.BSTR;

   function Get_BuiltIn
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_ID
     (This : CaptionLabel_Type)
     return WdCaptionLabelID;

   function Get_IncludeChapterNumber
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeChapterNumber
     (This : CaptionLabel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_NumberStyle
     (This : CaptionLabel_Type)
     return WdCaptionNumberStyle;

   procedure Put_NumberStyle
     (This : CaptionLabel_Type;
      prop : WdCaptionNumberStyle);

   function Get_ChapterStyleLevel
     (This : CaptionLabel_Type)
     return Interfaces.C.long;

   procedure Put_ChapterStyleLevel
     (This : CaptionLabel_Type;
      prop : Interfaces.C.long);

   function Get_Separator
     (This : CaptionLabel_Type)
     return WdSeparatorType;

   procedure Put_Separator
     (This : CaptionLabel_Type;
      prop : WdSeparatorType);

   function Get_Position
     (This : CaptionLabel_Type)
     return WdCaptionPosition;

   procedure Put_Position
     (This : CaptionLabel_Type;
      prop : WdCaptionPosition);

   procedure Delete
     (This : CaptionLabel_Type);

end winword.CaptionLabel_Interface;

