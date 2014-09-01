with Ada.Exceptions;
with Ada.Command_Line; use Ada.Command_Line;
with Word;
With Text_Io; use Text_Io;

procedure Client is
begin
   Word.Init;
   Word.Open_Document(Argument(1));
   Word.Print;
   --Word.Run_Macro("in_wfl");
   Word.Quit;
exception
   when E : others =>
      Put_Line (Ada.Exceptions.Exception_Name (E));
      Put_Line (Ada.Exceptions.Exception_Message (E));
end Client;
