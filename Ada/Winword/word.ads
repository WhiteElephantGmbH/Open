with winword.uApplication_Interface;
with winword.UDocument_Interface;
with winword.Documents_Interface;

package Word is

   type Winword_Instance is private;

   -- Startet Winword Instanz und setzt interne Handle
   -- Aufruf zwingend vor jeder anderen aktion!
   procedure Init(Single_Instance: in Boolean := False);
   function Init return winword_instance;

   -- Öffnet das Dokument und setzt es als aktives Dokument
   procedure Open_Document(Filename: in String);
   procedure Open_Document(Inst: in out Winword_Instance; Filename: in String);

   -- Schliesst das aktive Dokument
   procedure Close(Savechanges: in Boolean:=False);
   procedure Close(Inst: in Winword_Instance; Savechanges: in Boolean:=False);

   -- Zeigt winword GUI an
   procedure Show;
   procedure Show(Inst: in Winword_Instance);

   -- Ausdruck des aktiven Dokuments auf dem Standard Drucker
   procedure Print(Background: in Boolean:=False);
   procedure Print(Inst: in Winword_Instance; Background: in Boolean:=False);

   -- Führt das bezeichnete Macro aus
   procedure Run_Macro(Macro_Name: in String);
   procedure Run_Macro(Inst: in Winword_Instance; Macro_Name: in String);

   -- beendet Winword Instanz
   procedure Quit(Savechanges: in Boolean:=False);
   procedure Quit(Inst: in Winword_Instance; Savechanges: in Boolean:=False);

   -- prüft, ob die Winword-Instanz noch läuft
   function Is_Running return Boolean;
   function Is_Running(Inst: in Winword_Instance) return Boolean;

private
   type Winword_Instance is
      record
         app: winword.uApplication_Interface.Uapplication_Type; -- Winword Instanz
         Doclist: winword.Documents_Interface.Documents_Type;   -- Dokumentenliste
         Doc: winword.UDocument_Interface.uDocument_Type;       -- Aktives Dokument
      end record;
end Word;
