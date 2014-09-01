package body winword.uCodeModule_Object is

   function Get_Parent
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodeModule_Get_Parent);
   end Get_Parent;

   function Get_VBE
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodeModule_Get_VBE);
   end Get_VBE;

   function Get_Name
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodeModule_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : uCodeModule_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCodeModule_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   procedure AddFromString
     (This   : uCodeModule_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodeModule_AddFromString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => String),
         Free);
   end AddFromString;

   procedure AddFromFile
     (This     : uCodeModule_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodeModule_AddFromFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end AddFromFile;

   function Get_Lines
     (This      : uCodeModule_Type;
      StartLine : GNATCOM.Types.VARIANT;
      Count     : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCodeModule_Get_Lines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => StartLine),
         Free);
   end Get_Lines;

   function Get_CountOfLines
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodeModule_Get_CountOfLines);
   end Get_CountOfLines;

   procedure InsertLines
     (This   : uCodeModule_Type;
      Line   : GNATCOM.Types.VARIANT;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodeModule_InsertLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => String,
          2 => Line),
         Free);
   end InsertLines;

   procedure DeleteLines
     (This      : uCodeModule_Type;
      StartLine : GNATCOM.Types.VARIANT;
      Count     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodeModule_DeleteLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => StartLine),
         Free);
   end DeleteLines;

   procedure ReplaceLine
     (This   : uCodeModule_Type;
      Line   : GNATCOM.Types.VARIANT;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uCodeModule_ReplaceLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => String,
          2 => Line),
         Free);
   end ReplaceLine;

   function Get_ProcStartLine
     (This     : uCodeModule_Type;
      ProcName : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCodeModule_Get_ProcStartLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ProcKind,
          2 => ProcName),
         Free);
   end Get_ProcStartLine;

   function Get_ProcCountLines
     (This     : uCodeModule_Type;
      ProcName : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCodeModule_Get_ProcCountLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ProcKind,
          2 => ProcName),
         Free);
   end Get_ProcCountLines;

   function Get_ProcBodyLine
     (This     : uCodeModule_Type;
      ProcName : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCodeModule_Get_ProcBodyLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ProcKind,
          2 => ProcName),
         Free);
   end Get_ProcBodyLine;

   function Get_ProcOfLine
     (This     : uCodeModule_Type;
      Line     : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCodeModule_Get_ProcOfLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ProcKind,
          2 => Line),
         Free);
   end Get_ProcOfLine;

   function Get_CountOfDeclarationLines
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodeModule_Get_CountOfDeclarationLines);
   end Get_CountOfDeclarationLines;

   function CreateEventProc
     (This       : uCodeModule_Type;
      EventName  : GNATCOM.Types.VARIANT;
      ObjectName : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCodeModule_CreateEventProc,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ObjectName,
          2 => EventName),
         Free);
   end CreateEventProc;

   function Find
     (This          : uCodeModule_Type;
      Target        : GNATCOM.Types.VARIANT;
      StartLine     : GNATCOM.Types.VARIANT;
      StartColumn   : GNATCOM.Types.VARIANT;
      EndLine       : GNATCOM.Types.VARIANT;
      EndColumn     : GNATCOM.Types.VARIANT;
      WholeWord     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchCase     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PatternSearch : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCodeModule_Find,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PatternSearch,
          2 => MatchCase,
          3 => WholeWord,
          4 => EndColumn,
          5 => EndLine,
          6 => StartColumn,
          7 => StartLine,
          8 => Target),
         Free);
   end Find;

   function Get_CodePane
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCodeModule_Get_CodePane);
   end Get_CodePane;

end winword.uCodeModule_Object;

