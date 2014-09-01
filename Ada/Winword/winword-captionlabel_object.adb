package body winword.CaptionLabel_Object is

   function Get_Application
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_Name);
   end Get_Name;

   function Get_BuiltIn
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_BuiltIn);
   end Get_BuiltIn;

   function Get_ID
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_ID);
   end Get_ID;

   function Get_IncludeChapterNumber
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_IncludeChapterNumber);
   end Get_IncludeChapterNumber;

   procedure Put_IncludeChapterNumber
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CaptionLabel_Put_IncludeChapterNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeChapterNumber;

   function Get_NumberStyle
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CaptionLabel_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_ChapterStyleLevel
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_ChapterStyleLevel);
   end Get_ChapterStyleLevel;

   procedure Put_ChapterStyleLevel
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CaptionLabel_Put_ChapterStyleLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ChapterStyleLevel;

   function Get_Separator
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_Separator);
   end Get_Separator;

   procedure Put_Separator
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CaptionLabel_Put_Separator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Separator;

   function Get_Position
     (This : CaptionLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabel_Get_Position);
   end Get_Position;

   procedure Put_Position
     (This : CaptionLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CaptionLabel_Put_Position,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Position;

   procedure Delete
     (This : CaptionLabel_Type)
   is
   begin
      Invoke (This, CaptionLabel_Delete);
   end Delete;

end winword.CaptionLabel_Object;

