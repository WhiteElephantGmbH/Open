with Ada.Exceptions;
with Text_Io; use Text_Io;
--------------------------------------------------
with GNATCOM.Initialize; use GNATCOM.Initialize;
with GNATCOM.BSTR;
with GNATCOM.types;
with GNATCOM.Variant;
with Winword.Uapplication_interface; use Winword.Uapplication_interface;
with Winword.Documents_Interface; use Winword.Documents_Interface;
with Winword.Udocument_Interface; use Winword.Udocument_Interface;

package body Word is
   -- Winword Instanz
   App: Uapplication_Type;
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
      Create(app, "Word.Application",Gnatcom.Types.CLSCTX_SERVER);
      -- Dokumentenliste initialisieren
      Attach(Doclist, Get_Documents(App));
   end Init;

   function Init return Winword_Instance is
      Inst: Winword_Instance;
   begin
      -- Com initialisieren
      GNATCOM.Initialize.Initialize_COM;

      -- Winword Instanz laden
      Create(inst.app, "Word.Application",Gnatcom.Types.CLSCTX_SERVER);
      -- Dokumentenliste initialisieren
      Attach(inst.Doclist, Get_Documents(inst.App));
      return inst;
   end Init;

   ------------------

   procedure Open_Document(Filename: in String) is
      Variant_Name: aliased Gnatcom.Types.Variant:=Gnatcom.Variant.To_Variant(Filename);
   begin
      Attach(Doc, Open(Doclist, Variant_Name'access));
   end Open_Document;

   procedure Open_Document(Inst: in out Winword_Instance; Filename: in String)is
      Variant_Name: aliased Gnatcom.Types.Variant:=Gnatcom.Variant.To_Variant(Filename);
   begin
      Attach(Inst.Doc, Open(Inst.Doclist, Variant_Name'access));
   end Open_Document;

   ------------------

   procedure Close(Savechanges: in Boolean:=False) is
    Savechanges_Variant: aliased Gnatcom.Types.Variant;
   begin
      if Savechanges then
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(-1);
      else
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(0);
      end if;
      Close(Doc, Savechanges_Variant'Access);
   end Close;

   procedure Close(Inst: in Winword_Instance; Savechanges: in Boolean:=False)is
    Savechanges_Variant: aliased Gnatcom.Types.Variant;
   begin
      if Savechanges then
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(-1);
      else
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(0);
      end if;
      Close(Inst.Doc, Savechanges_Variant'Access);
   end Close;

   -----------------

   procedure Print(Background: in Boolean:=False) is
      Bkgd_Variant: aliased Gnatcom.Types.Variant:=Gnatcom.Variant.To_Variant(0);
   begin
      if not Background then
         Printout(Doc, Bkgd_Variant'Access);
      else
         Printout(Doc);
      end if;
   end Print;

   procedure Print(Inst: in Winword_Instance; Background: in Boolean:=False)is
      Bkgd_Variant: aliased Gnatcom.Types.Variant:=Gnatcom.Variant.To_Variant(0);
   begin
      if not Background then
         Printout(Inst.Doc, Bkgd_Variant'Access);
      else
         Printout(Inst.Doc);
      end if;
   end Print;

   -------------------

   procedure Run_Macro(Macro_Name: in String) is
      BSTR_Name: Gnatcom.Types.Bstr:=Gnatcom.Bstr.To_Bstr(Macro_Name);
      Ret: Gnatcom.types.Variant;
   begin
      Ret:=Run(App, BSTR_Name);
   end Run_Macro;

   procedure Run_Macro(Inst: in Winword_Instance; Macro_Name: in String)is
      BSTR_Name: Gnatcom.Types.Bstr:=Gnatcom.Bstr.To_Bstr(Macro_Name);
      Ret: Gnatcom.types.Variant;
   begin
      Ret:=Run(Inst.App, BSTR_Name);
   end Run_Macro;

   -----------------------

   procedure Show is
   begin
      Put_visible(App, 1);
      Activate(App);
   end Show;

   procedure Show(Inst: in Winword_Instance)is
   begin
      Put_visible(Inst.App, 1);
      Activate(Inst.App);
   end Show;

   --------------------

   procedure Quit(Savechanges: in Boolean:=False) is
      Savechanges_Variant: aliased Gnatcom.Types.Variant;
   begin
      if Savechanges then
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(-1);
      else
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(0);
      end if;
      Quit(App,Savechanges_Variant'Access);
   end Quit;

   procedure Quit(Inst: in Winword_Instance; Savechanges: in Boolean:=False)is
      Savechanges_Variant: aliased Gnatcom.Types.Variant;
   begin
      if Savechanges then
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(-1);
      else
         Savechanges_Variant:=Gnatcom.Variant.To_Variant(0);
      end if;
      Quit(Inst.App,Savechanges_Variant'Access);
   end Quit;

   --------------------

   function Is_Running return Boolean is
      Run: Integer;
   begin
      Run := Integer(Get_Visible(App));
      return true;
   exception
      when others =>
         return False;
   end Is_Running;

   function Is_Running(Inst: in Winword_Instance) return Boolean is
      Run: Integer;
   begin
      Run := Integer(Get_Visible(Inst.App));
      return true;
   exception
      when others =>
         return False;
   end Is_Running;

end Word;
