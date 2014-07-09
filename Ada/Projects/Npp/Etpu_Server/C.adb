-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *                                                                                                                   *
-- *    This program is free software; you can redistribute it and/or modify it under the terms of the GNU General     *
-- *    Public License as published by the Free Software Foundation; either version 2 of the License, or               *
-- *    (at your option) any later version.                                                                            *
-- *                                                                                                                   *
-- *    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the     *
-- *    implied warranty of MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE. See the GNU General Public License    *
-- *    for more details.                                                                                              *
-- *                                                                                                                   *
-- *    You should have received a copy of the GNU General Public License along with this program; if not, write to    *
-- *    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Log;
with Process;
with Project;
with Promotion;
with Server;
with String_List;
with Text;
with Windows.Files;

package body C is

  Space : constant String := " ";


  function Perform (Executable : String;
                    Parameters : String) return String is
  begin
    return Process.Execution_Of (Executable => Executable,
                                 Parameters => Parameters);
  end Perform;


  function Compiler (Parameters : String) return String is
  begin
    return Perform (Project.Compiler, Parameters);
  end Compiler;


  function Linker (Parameters : String) return String is
  begin
    return Perform (Project.Linker, Parameters);
  end Linker;


  procedure Handle_Errors_For (Filename  : String;
                               Text_Mark : String;
                               Result    : String) is

    function Text_For (Start_Mark : String;
                       End_Mark   : String;
                       Default    : String) return String is
      First : constant Natural := Text.Location_Of (Start_Mark, Result);
    begin
      if First /= Text.Not_Found then
        declare
          Last  : constant Natural := Text.Location_Of (End_Mark, Result, First + Start_Mark'length);
        begin
          if Last /= Text.Not_Found then
            Log.Write ("TEXT FOR <" & Result(First + Start_Mark'length .. Last - End_Mark'length) & ">");
            return Result(First + Start_Mark'length .. Last - End_Mark'length);
          end if;
        end;
      end if;
      return Default;
    exception
    when others =>
      return Default;
    end Text_For;

    Filename_Mark : constant String := " file """;
    Filename_End  : constant String := """";
    Line_Mark1    : constant String := "(";
    Line_End1     : constant String := ")";
    Line_Mark2    : constant String := " line ";
    Line_End2     : constant String := ":";
    Text_End      : constant String := (1 => Ascii.Cr);

    function Line_Number return Server.Line_Number is
      Image : constant String := Text_For (Line_Mark1, Line_End1, "");
    begin
      begin
        return Server.Line_Number'value(Image);
      exception
      when others =>
        declare
          Image : constant String := Text_For (Line_Mark2, Line_End2, "");
        begin
          return Server.Line_Number'value(Image);
        end;
      end;
    exception
    when others =>
      return Server.Unknown_Line;
    end Line_Number;

  begin
    if Text.Trimmed (Result) /= "" then
      Log.Write ("ERROR OUTPUT=" & Result);
      Promotion.Set_Error (Item => Text_For (Text_Mark, Text_End, "Error detected in " & Filename),
                           File => Text_For (Filename_Mark, Filename_End, Filename),
                           Line => Line_Number);
    end if;
  exception
  when Promotion.Error =>
    raise;
  when others =>
    Log.Write ("UNKNOWN ERROR");
    Promotion.Set_Error ("Unknown Error in " & Filename, Filename);
  end Handle_Errors_For;


  procedure Handle_For (Filename   : String;
                        Parameters : String;
                        Text_Mark  : String;
                        Action     : access function (Parameters : String) return String) is
  begin
    Handle_Errors_For (Filename  => Filename,
                       Text_Mark => Text_Mark,
                       Result    => Action (Parameters));
  end Handle_For;


  procedure Compile (Filename : String) is

    Options : constant String := "-globalscratchpad " &
                                 "-packstruct=legacy " &
                                 "-verbSuppress=BANNER " &
                                 "-verbSuppress=SUMMARY " &
                                 "-msgStyle=MSDV";
  begin
    declare
      Parameters : constant String
                 := Options &
                    Project.Include_Path_Of (Filename) & Space &
                    "-out=" & Project.Object_Of (Filename) & Space &
                    Filename;
    begin
      Promotion.Set_Message ("Compile " & Filename);
      --TEST---------------------------------------------------
      Log.Write ("    -> C.Compile   : " & Filename);
      Log.Write ("       - Parameters: " & Parameters);
      ---------------------------------------------------------
      Handle_For (Filename   => Filename,
                  Parameters => Parameters,
                  Text_Mark  => " CC ",
                  Action     => Compiler'access);
    exception
    when Promotion.Error =>
      raise;
    when Process.Execution_Failed =>
      Promotion.Set_Error (Project.Compiler & " not executed");
    when Item: others =>
      Log.Write ("C.Compile", Item);
      Promotion.Set_Error ("Unknown compilation result", Filename);
    end;
  end Compile;


  procedure Link (Filename    : String;
                  Source_List : String_List.Item) is

    Options : constant String := " -elfgd" &
                                 " -etba=0x0" &
                                 " -CodeSize=0x1800" &
                                 " -ana- " &
                                 " -autostruct=D:\temp\etpu.h" &
                                 " -defines-" &
                                 " -idata-" &
                                 " -scm-" &
                                 " -map" &
                                 " -Strict" &
                                 " -verbSuppress=BANNER" &
                                 " -verbSuppress=SUMMARY" &
                                 " -verb=4";
  begin
    declare
      Parameters : constant String
                 := Project.Objects_Of (Source_List) &
                    "-out=" & Project.Linker_Output_Of (Filename) &
                    Options;
    begin
      Promotion.Set_Message ("Link " & Filename);
      --TEST---------------------------------------------------
      Log.Write ("    -> C.Link      : " & Filename);
      Log.Write ("       - Parameters: " & Parameters);
      ---------------------------------------------------------
      Handle_For (Filename   => Filename,
                  Parameters => Parameters,
                  Text_Mark  => " LINK ",
                  Action     => Linker'access);
    exception
    when Promotion.Error =>
      raise;
    when Process.Execution_Failed =>
      Promotion.Set_Error (Project.Linker & " not executed");
    when Item: others =>
      Log.Write ("C.Link", Item);
      Promotion.Set_Error ("Unknown link result", Filename);
    end;
  end Link;


  procedure Promote (Filename : String) is
  begin
    if Project.Is_C_Source (Filename) then
      Compile (Filename);
    else
      Windows.Files.Delete_File (Project.Linker_Output_Of (Filename));
      Windows.Files.Delete_File (Project.Link_Map_Of (Filename));
      declare
        Source_List : constant String_List.Item := Project.Source_List_Of (Filename);
      begin
        for Source of Source_List loop
          Compile (Source);
        end loop;
        Link (Filename, Source_List);
        Promotion.Define_Next_Message_Color (Promotion.Green);
      end;
    end if;
  end Promote;

end C;
