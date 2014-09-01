with GNATCOM.Dispinterface;

package winword.uCodeModule_Interface is

   type uCodeModule_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uCodeModule_Type);

   function Pointer (This : uCodeModule_Type)
     return Pointer_To_uCodeModule;

   procedure Attach (This    : in out uCodeModule_Type;
                     Pointer : in     Pointer_To_uCodeModule);

   function Get_Parent
     (This    : uCodeModule_Type)
     return Pointer_To_uVBComponent;

   function Get_VBE
     (This    : uCodeModule_Type)
     return Pointer_To_VBE;

   function Get_Name
     (This      : uCodeModule_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This      : uCodeModule_Type;
      pbstrName : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

   procedure AddFromString
     (This   : uCodeModule_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True);

   procedure AddFromFile
     (This     : uCodeModule_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_Lines
     (This      : uCodeModule_Type;
      StartLine : Interfaces.C.long;
      Count     : Interfaces.C.long)
     return GNATCOM.Types.BSTR;

   function Get_CountOfLines
     (This         : uCodeModule_Type)
     return Interfaces.C.long;

   procedure InsertLines
     (This   : uCodeModule_Type;
      Line   : Interfaces.C.long;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True);

   procedure DeleteLines
     (This      : uCodeModule_Type;
      StartLine : Interfaces.C.long;
      Count     : Interfaces.C.long);

   procedure ReplaceLine
     (This   : uCodeModule_Type;
      Line   : Interfaces.C.long;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True);

   function Get_ProcStartLine
     (This          : uCodeModule_Type;
      ProcName      : GNATCOM.Types.BSTR;
      ProcKind      : vbext_ProcKind;
      Free          : Boolean := True)
     return Interfaces.C.long;

   function Get_ProcCountLines
     (This           : uCodeModule_Type;
      ProcName       : GNATCOM.Types.BSTR;
      ProcKind       : vbext_ProcKind;
      Free           : Boolean := True)
     return Interfaces.C.long;

   function Get_ProcBodyLine
     (This         : uCodeModule_Type;
      ProcName     : GNATCOM.Types.BSTR;
      ProcKind     : vbext_ProcKind;
      Free         : Boolean := True)
     return Interfaces.C.long;

   function Get_ProcOfLine
     (This      : uCodeModule_Type;
      Line      : Interfaces.C.long;
      ProcKind  : Pointer_To_vbext_ProcKind)
     return GNATCOM.Types.BSTR;

   function Get_CountOfDeclarationLines
     (This              : uCodeModule_Type)
     return Interfaces.C.long;

   function CreateEventProc
     (This       : uCodeModule_Type;
      EventName  : GNATCOM.Types.BSTR;
      ObjectName : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
     return Interfaces.C.long;

   function Find
     (This          : uCodeModule_Type;
      Target        : GNATCOM.Types.BSTR;
      StartLine     : GNATCOM.Types.Pointer_To_long;
      StartColumn   : GNATCOM.Types.Pointer_To_long;
      EndLine       : GNATCOM.Types.Pointer_To_long;
      EndColumn     : GNATCOM.Types.Pointer_To_long;
      WholeWord     : GNATCOM.Types.VARIANT_BOOL;
      MatchCase     : GNATCOM.Types.VARIANT_BOOL;
      PatternSearch : GNATCOM.Types.VARIANT_BOOL;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_CodePane
     (This     : uCodeModule_Type)
     return Pointer_To_uCodePane;

end winword.uCodeModule_Interface;

