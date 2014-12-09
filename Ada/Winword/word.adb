with Ada.Exceptions;
with Text_IO; use Text_IO;
--------------------------------------------------
with GNATCOM.Initialize; use GNATCOM.Initialize;
with GNATCOM.BSTR;
with GNATCOM.Types;
with GNATCOM.VARIANT;
with winword.uApplication_Interface; use winword.uApplication_Interface;
with winword.Documents_Interface; use winword.Documents_Interface;
with winword.uDocument_Interface; use winword.uDocument_Interface;

package body Word is
   -- Winword Instanz
   App: uApplication_Type;
   -- Dokumentenliste
   Doclist: Documents_Type;
   -- Aktives Dokument
   Doc: uDocument_Type;

   procedure Init(Single_Instance: in Boolean := False) is
   begin
      -- Com initialisieren
      if Single_Instance then
         GNATCOM.Initialize.Initialize_COM;
      else
         Initialize_COM_Multi_Threaded;
      end if;

      -- Winword Instanz laden
      Create(App, "Word.Application",GNATCOM.Types.CLSCTX_SERVER);
      -- Dokumentenliste initialisieren
      Attach(Doclist, Get_Documents(App));
   end Init;

   function Init return Winword_Instance is
      Inst: Winword_Instance;
   begin
      -- Com initialisieren
      GNATCOM.Initialize.Initialize_COM;

      -- Winword Instanz laden
      Create(Inst.app, "Word.Application",GNATCOM.Types.CLSCTX_SERVER);
      -- Dokumentenliste initialisieren
      Attach(Inst.Doclist, Get_Documents(Inst.app));
      return Inst;
   end Init;

   ------------------

   procedure Open_Document(Filename: in String) is
      Variant_Name: aliased GNATCOM.Types.VARIANT:=GNATCOM.VARIANT.To_VARIANT(Filename);
   begin
      Attach(Doc, Open(Doclist, Variant_Name'access));
   end Open_Document;

   procedure Open_Document(Inst: in out Winword_Instance; Filename: in String)is
      Variant_Name: aliased GNATCOM.Types.VARIANT:=GNATCOM.VARIANT.To_VARIANT(Filename);
   begin
      Attach(Inst.Doc, Open(Inst.Doclist, Variant_Name'access));
   end Open_Document;

   ------------------

   procedure Close(Savechanges: in Boolean:=False) is
    Savechanges_Variant: aliased GNATCOM.Types.VARIANT;
   begin
      if Savechanges then
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(-1);
      else
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(0);
      end if;
      Close(Doc, Savechanges_Variant'access);
   end Close;

   procedure Close(Inst: in Winword_Instance; Savechanges: in Boolean:=False)is
    Savechanges_Variant: aliased GNATCOM.Types.VARIANT;
   begin
      if Savechanges then
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(-1);
      else
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(0);
      end if;
      Close(Inst.Doc, Savechanges_Variant'access);
   end Close;

   -----------------

   procedure Print(Background: in Boolean:=False) is
      Bkgd_Variant: aliased GNATCOM.Types.VARIANT:=GNATCOM.VARIANT.To_VARIANT(0);
   begin
      if not Background then
         PrintOut(Doc, Bkgd_Variant'access);
      else
         PrintOut(Doc);
      end if;
   end Print;

   procedure Print(Inst: in Winword_Instance; Background: in Boolean:=False)is
      Bkgd_Variant: aliased GNATCOM.Types.VARIANT:=GNATCOM.VARIANT.To_VARIANT(0);
   begin
      if not Background then
         PrintOut(Inst.Doc, Bkgd_Variant'access);
      else
         PrintOut(Inst.Doc);
      end if;
   end Print;

   -------------------

   procedure Run_Macro(Macro_Name: in String) is
      BSTR_Name: constant GNATCOM.Types.BSTR:=GNATCOM.BSTR.To_BSTR(Macro_Name);
      Ret: GNATCOM.Types.VARIANT;
   begin
      Ret:=Run(App, BSTR_Name);
   end Run_Macro;

   procedure Run_Macro(Inst: in Winword_Instance; Macro_Name: in String)is
      BSTR_Name: constant GNATCOM.Types.BSTR:=GNATCOM.BSTR.To_BSTR(Macro_Name);
      Ret: GNATCOM.Types.VARIANT;
   begin
      Ret:=Run(Inst.app, BSTR_Name);
   end Run_Macro;

   -----------------------

   procedure Show is
   begin
      Put_Visible(App, 1);
      Activate(App);
   end Show;

   procedure Show(Inst: in Winword_Instance)is
   begin
      Put_Visible(Inst.app, 1);
      Activate(Inst.app);
   end Show;

   --------------------

   procedure Quit(Savechanges: in Boolean:=False) is
      Savechanges_Variant: aliased GNATCOM.Types.VARIANT;
   begin
      if Savechanges then
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(-1);
      else
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(0);
      end if;
      Quit(App,Savechanges_Variant'access);
   end Quit;

   procedure Quit(Inst: in Winword_Instance; Savechanges: in Boolean:=False)is
      Savechanges_Variant: aliased GNATCOM.Types.VARIANT;
   begin
      if Savechanges then
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(-1);
      else
         Savechanges_Variant:=GNATCOM.VARIANT.To_VARIANT(0);
      end if;
      Quit(Inst.app,Savechanges_Variant'access);
   end Quit;

   --------------------

   function Is_Running return Boolean is
      Run: Integer;
   begin
      Run := Integer(Get_Visible(App));
      return True;
   exception
      when others =>
         return False;
   end Is_Running;

   function Is_Running(Inst: in Winword_Instance) return Boolean is
      Run: Integer;
   begin
      Run := Integer(Get_Visible(Inst.app));
      return True;
   exception
      when others =>
         return False;
   end Is_Running;

end Word;
