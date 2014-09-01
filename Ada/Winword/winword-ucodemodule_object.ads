with GNATCOM.Dispinterface;

package winword.uCodeModule_Object is

   type uCodeModule_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Parent
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : uCodeModule_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure AddFromString
     (This   : uCodeModule_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure AddFromFile
     (This     : uCodeModule_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_Lines
     (This      : uCodeModule_Type;
      StartLine : GNATCOM.Types.VARIANT;
      Count     : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_CountOfLines
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT;

   procedure InsertLines
     (This   : uCodeModule_Type;
      Line   : GNATCOM.Types.VARIANT;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DeleteLines
     (This      : uCodeModule_Type;
      StartLine : GNATCOM.Types.VARIANT;
      Count     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure ReplaceLine
     (This   : uCodeModule_Type;
      Line   : GNATCOM.Types.VARIANT;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function Get_ProcStartLine
     (This     : uCodeModule_Type;
      ProcName : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_ProcCountLines
     (This     : uCodeModule_Type;
      ProcName : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_ProcBodyLine
     (This     : uCodeModule_Type;
      ProcName : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_ProcOfLine
     (This     : uCodeModule_Type;
      Line     : GNATCOM.Types.VARIANT;
      ProcKind : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_CountOfDeclarationLines
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT;

   function CreateEventProc
     (This       : uCodeModule_Type;
      EventName  : GNATCOM.Types.VARIANT;
      ObjectName : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   function Get_CodePane
     (This : uCodeModule_Type)
     return GNATCOM.Types.VARIANT;

end winword.uCodeModule_Object;

