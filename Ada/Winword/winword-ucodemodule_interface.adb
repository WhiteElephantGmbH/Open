with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uCodeModule_Interface is

   procedure Initialize (This : in out uCodeModule_Type) is
   begin
      Set_IID (This, IID_uCodeModule);
   end Initialize;

   function Pointer (This : uCodeModule_Type)
     return Pointer_To_uCodeModule
   is
   begin
      return To_Pointer_To_uCodeModule (Address (This));
   end Pointer;

   procedure Attach (This    : in out uCodeModule_Type;
                     Pointer : in     Pointer_To_uCodeModule)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Parent
     (This    : uCodeModule_Type)
     return Pointer_To_uVBComponent
   is
       RetVal : aliased Pointer_To_uVBComponent;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_VBE
     (This    : uCodeModule_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBE;

   function Get_Name
     (This      : uCodeModule_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   procedure Put_Name
     (This      : uCodeModule_Type;
      pbstrName : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          pbstrName));

      if Free then
               GNATCOM.Interface.Free (pbstrName);
      
      end if;

   end Put_Name;

   procedure AddFromString
     (This   : uCodeModule_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFromString
         (Pointer (This),
          String));

      if Free then
               GNATCOM.Interface.Free (String);
      
      end if;

   end AddFromString;

   procedure AddFromFile
     (This     : uCodeModule_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddFromFile
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end AddFromFile;

   function Get_Lines
     (This      : uCodeModule_Type;
      StartLine : Interfaces.C.long;
      Count     : Interfaces.C.long)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Lines
         (Pointer (This),
          StartLine,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Lines;

   function Get_CountOfLines
     (This         : uCodeModule_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CountOfLines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CountOfLines;

   procedure InsertLines
     (This   : uCodeModule_Type;
      Line   : Interfaces.C.long;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertLines
         (Pointer (This),
          Line,
          String));

      if Free then
               GNATCOM.Interface.Free (String);
      
      end if;

   end InsertLines;

   procedure DeleteLines
     (This      : uCodeModule_Type;
      StartLine : Interfaces.C.long;
      Count     : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DeleteLines
         (Pointer (This),
          StartLine,
          Count));

   end DeleteLines;

   procedure ReplaceLine
     (This   : uCodeModule_Type;
      Line   : Interfaces.C.long;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReplaceLine
         (Pointer (This),
          Line,
          String));

      if Free then
               GNATCOM.Interface.Free (String);
      
      end if;

   end ReplaceLine;

   function Get_ProcStartLine
     (This          : uCodeModule_Type;
      ProcName      : GNATCOM.Types.BSTR;
      ProcKind      : vbext_ProcKind;
      Free          : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProcStartLine
         (Pointer (This),
          ProcName,
          ProcKind,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (ProcName);
      
      end if;

      return RetVal;
   end Get_ProcStartLine;

   function Get_ProcCountLines
     (This           : uCodeModule_Type;
      ProcName       : GNATCOM.Types.BSTR;
      ProcKind       : vbext_ProcKind;
      Free           : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProcCountLines
         (Pointer (This),
          ProcName,
          ProcKind,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (ProcName);
      
      end if;

      return RetVal;
   end Get_ProcCountLines;

   function Get_ProcBodyLine
     (This         : uCodeModule_Type;
      ProcName     : GNATCOM.Types.BSTR;
      ProcKind     : vbext_ProcKind;
      Free         : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProcBodyLine
         (Pointer (This),
          ProcName,
          ProcKind,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (ProcName);
      
      end if;

      return RetVal;
   end Get_ProcBodyLine;

   function Get_ProcOfLine
     (This      : uCodeModule_Type;
      Line      : Interfaces.C.long;
      ProcKind  : Pointer_To_vbext_ProcKind)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProcOfLine
         (Pointer (This),
          Line,
          ProcKind,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProcOfLine;

   function Get_CountOfDeclarationLines
     (This              : uCodeModule_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CountOfDeclarationLines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CountOfDeclarationLines;

   function CreateEventProc
     (This       : uCodeModule_Type;
      EventName  : GNATCOM.Types.BSTR;
      ObjectName : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateEventProc
         (Pointer (This),
          EventName,
          ObjectName,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (EventName);
               GNATCOM.Interface.Free (ObjectName);
      
      end if;

      return RetVal;
   end CreateEventProc;

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
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Find
         (Pointer (This),
          Target,
          StartLine,
          StartColumn,
          EndLine,
          EndColumn,
          WholeWord,
          MatchCase,
          PatternSearch,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Target);
      
      end if;

      return RetVal;
   end Find;

   function Get_CodePane
     (This     : uCodeModule_Type)
     return Pointer_To_uCodePane
   is
       RetVal : aliased Pointer_To_uCodePane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CodePane
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CodePane;

end winword.uCodeModule_Interface;

