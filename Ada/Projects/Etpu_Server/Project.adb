-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2015 by White Elephant GmbH, Schaffhausen, Switzerland                          *
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

with Ada.Text_IO;
with Log;
with Promotion;
with Server;
with Strings;
with Text;
with Windows.Files;

package body Project is

  Separator       : constant Character := '\';
  Other_Separator : constant Character := '/';

  procedure Set_Confirmation (Message : String := "") is
  begin
    Promotion.Set_Message (Server.Confirmation & Message);
  end Set_Confirmation;


  function Confirmation_Message return String is
  begin
    if Promotion.Message_Ready then
      return Promotion.Message;
    end if;
    return "";
  end Confirmation_Message;


  function Directory_Of (Full_Name : String) return String is
  begin
    for Index in reverse Full_Name'range loop
      if Full_Name(Index) = Separator or Full_Name(Index) = Other_Separator then
        return Full_Name (Full_Name'first .. Index - 1);
      end if;
    end loop;
    raise Program_Error;
  end Directory_Of;


  function Folder_Of (Full_Name : String) return String is
  begin
    return Directory_Of (Full_Name) & Separator;
  end Folder_Of;


  procedure Create_Folder (Folder : String) is
  begin
    for First_Index in Folder'range loop
      if Folder(First_Index) = Separator or Folder(First_Index) = Other_Separator then
        for Index in First_Index + 1 .. Folder'last loop
          if Folder(Index) = Separator or Folder(Index) = Other_Separator then
            Windows.Files.Create_Directory (Directory       => Folder(Folder'first .. Index - 1),
                                            Ignore_Existing => True);
          elsif Index = Folder'last then
            Windows.Files.Create_Directory (Directory       => Folder(Folder'first .. Index),
                                            Ignore_Existing => True);
          end if;
        end loop;
      end if;
    end loop;
  end Create_Folder;


  function Module_Of (Filename : String) return String is
    Module_Start : Natural := Filename'first;
    Module_End   : Natural := Filename'last;
  begin
    for Index in reverse Filename'range loop
      case Filename(Index) is
      when Separator | Other_Separator =>
        Module_Start := Index + 1;
        exit;
      when '.' | '-' =>
        Module_End := Index - 1;
      when others =>
        null;
      end case;
    end loop;
    return Filename(Module_Start .. Module_End);
  end Module_Of;


  function Is_C_Source (Filename : String) return Boolean is
    Extension : constant String := Strings.File_Extension_Of (Filename);
  begin
    return (Extension = "h") or (Extension = "c");
  end Is_C_Source;


  function Is_Object_List (Filename : String) return Boolean is
  begin
    if Filename'length < 5 then
      return False;
    else
      declare
        Extension : constant String := Strings.Lowercase_Of (Filename (Filename'last - 3 .. Filename'last));
      begin
        return Extension = ".ofl";
      end;
    end if;
  end Is_Object_List;


  function Has_Known_Extension (Filename : String) return Boolean is
  begin
    return Is_C_Source (Filename) or Is_Object_List (Filename);
  end Has_Known_Extension;


  function Project_Parts_Of (Name       : String;
                             The_Folder : out Text.String) return Strings.Item is

    Area : constant String := "eTpu";

    The_Index  : Natural := Name'first;
    The_List   : String_List.Item;
    The_String : Text.String;

  begin
    for Index in Name'range loop
      if Name(Index) = Separator or Name(Index) = Other_Separator then
        if The_Index /= Name'first then
          declare
            Area_Part : constant String := Name(The_Index + 1 .. Index - 1);
          begin
            if Area_Part = Area then
              The_String := Text.String_Of (Name(Name'first .. Index));
              The_Index := Name'last;
              for Inner_Index in reverse Index .. Name'last loop
                if Name(Inner_Index) = Separator or Name(Inner_Index) = Other_Separator then
                  declare
                    Part : constant String := Name(Inner_Index + 1 .. The_Index);
                    use type String_List.Item;
                  begin
                    if Part /= "" then
                      The_List := Part + The_List;
                    end if;
                  end;
                  The_Index := Inner_Index - 1;
                end if;
              end loop;
              exit;
            end if;
          end;
        end if;
        The_Index := Index;
      end if;
    end loop;
    The_Folder := The_String;
    return Strings.Item_Of (The_List);
  end Project_Parts_Of;


  The_Project_Name        : Text.String;
  The_Project_Folder      : Text.String;
  The_Area_Folder         : Text.String;
  The_Binary_Root         : Text.String;
  The_Binary_Library_Area : Text.String;
  The_Product_Area        : Text.String;
  The_Product_Extension   : Text.String;
  The_Tools_Location      : Text.String;
  The_Work_Path           : String_List.Item;

  procedure Set_Project_Undefined is
  begin
    Text.Clear (The_Project_Name);
    Text.Clear (The_Project_Folder);
    Text.Clear (The_Area_Folder);
    Text.Clear (The_Binary_Root);
    Text.Clear (The_Binary_Library_Area);
    Text.Clear (The_Product_Area);
    Text.Clear (The_Product_Extension);
    Text.Clear (The_Tools_Location);
    String_List.Clear (The_Work_Path);
  end Set_Project_Undefined;


  function Area_Folder return String is
  begin
    return Text.String_Of (The_Area_Folder);
  end Area_Folder;


  function Definition_File return String is
  begin
    return Area_Folder & Server.Project_File;
  end Definition_File;


  function Project_Name return String is
  begin
    return Text.String_Of (The_Project_Name);
  end Project_Name;


  function Tools_Folder return String is
    use type Text.String;
  begin
    return Text.String_Of (The_Tools_Location) & Separator;
  end Tools_Folder;


  function Binary_Folder return String is
  begin
    return Text.String_Of (The_Binary_Root) & Separator;
  end Binary_Folder;


  function Product_Folder return String is
  begin
    return Text.String_Of (The_Product_Area) & Separator;
  end Product_Folder;


  function Product_Extension return String is
  begin
    return '.' & Text.String_Of (The_Product_Extension);
  end Product_Extension;


  procedure Create_Work_Area_For (Project_Parts :     Strings.Item;
                                  New_Work_Path : out String_List.Item) is

    function Part_Of (Index : Positive) return String is
    begin
      return Strings.Element_Of (Project_Parts, Index);
    end Part_Of;

    use type String_List.Item;

  begin -- Create_Work_Area_For
    String_List.Clear (New_Work_Path);
    The_Project_Folder := The_Area_Folder;
    for Index in Strings.First .. Project_Parts.Count - 1 loop
      declare
        Area   : constant String := Part_Of (Index);
        Folder : constant String := Text.String_Of (The_Project_Folder) & Area & Separator;
      begin
        New_Work_Path := Folder + New_Work_Path;
        The_Project_Folder := Text.String_Of (Folder);
      end;
    end loop;
    The_Project_Name := Text.String_Of (Part_Of (Project_Parts.Count - 1));
  end Create_Work_Area_For;


  function Initialized (Name : String) return Boolean is

    Error_Set : exception;

    procedure Set_Error (Message : String) is
    begin
      Promotion.Set_Message (Server.Not_Confirmed & Message);
      raise Error_Set;
    end Set_Error;


    function Element_Of (Key         : String;
                         Application : String) return String is

      Element : constant String := Windows.Profile (Key           => Key,
                                                    Application   => Application,
                                                    Configuration => Definition_File);
    begin
      if Element = "" then
        Set_Error ("<[" & Application & "] " & Key & "> undefined in " & Definition_File);
      end if;
      return Element;
    end Element_Of;


    procedure Define (The_Element : out Text.String;
                      Key         :     String;
                      Application :     String) is
    begin
      The_Element := Text.String_Of (Element_Of (Application => Application, Key => Key));
    end Define;


    procedure Define_Directory (The_Directory : out Text.String;
                                Key           :     String;
                                Application   :     String) is

      Directory : constant String := Element_Of (Application => Application, Key => Key);

    begin
      if not Windows.Files.Directory_Exists (Directory) then
        Set_Error (Application & " " & Key & " <" & Directory & "> unknown");
      end if;
      The_Directory := Text.String_Of (Directory);
    end Define_Directory;

    Project_Parts : constant Strings.Item := Project_Parts_Of (Name, The_Area_Folder);

  begin -- Initialized
    Log.Write ("||| Project.Initialize: " & Name);
    if Text.Is_Null (The_Area_Folder) then
      Set_Error ("Unknown modula project for " & Name);
    elsif not Windows.Files.File_Exists (Definition_File) then
      Set_Error ("Project definition file missing: " & Definition_File & " (case sensitive)");
    elsif Project_Parts.Count < 2 then
      Set_Error ("Unknown project for " & Name);
    end if;
    Create_Work_Area_For (Project_Parts, The_Work_Path);
    Define_Directory (The_Tools_Location, Key => "Location", Application => "Tools");
    Define_Directory (The_Binary_Root, Key => "Root", Application => "Binary");
    Define_Directory (The_Product_Area, Key => "Location", Application => "Product");
    Define (The_Product_Extension, Key => "Extension", Application => "Product");
    ----------------------------------------
    for Folder of The_Work_Path loop
      Log.Write ("||| Folder: " & Folder);
    end loop;
    ----------------------------------------
    Set_Confirmation ("Project opened " & Project_Name);
    return True;
  exception
  when Error_Set =>
    Set_Project_Undefined;
    return False;
  end Initialized;


  function Is_Source (Name : String) return Boolean is
    Is_Known : Boolean := False;
  begin
    if Has_Known_Extension (Name) then
      declare
        Source_Folder : constant String := Folder_Of (Name);
      begin
        for Folder of The_Work_Path loop
          if Source_Folder = Folder then
            Is_Known := True;
            exit;
          end if;
        end loop;
      exception
      when others =>
        null;
      end;
    end if;
    Log.Write ("||| Project.Is_Source " & Name & " => " & Is_Known'img);
    return Is_Known;
  end Is_Source;


  procedure Finalize is
  begin
    Log.Write ("||| Project.Finalize");
    Set_Project_Undefined;
  end Finalize;


  function Compiler return String is
  begin
    return Tools_Folder & "ETEC_cc.exe";
  end Compiler;


  function Linker return String is
  begin
    return Tools_Folder & "ETEC_link.exe";
  end Linker;


  function Source_List_Of (Filename : String) return String_List.Item is

    The_Source_Line : Server.Line_Counter := 0;

    function Source_Of (Module : String) return String is
    begin
      for Folder of The_Work_Path loop
        declare
          C_Filename : constant String := Folder & Module & ".c";
        begin
          if Windows.Files.File_Exists (C_Filename) then
            return C_Filename;
          end if;
        end;
      end loop;
      Promotion.Set_Error (Item    => "Unknown source for " & Module,
                           File    => Filename,
                           At_Line => The_Source_Line);
      return "";
    end Source_Of;

    File     : Ada.Text_IO.File_Type;
    The_List : String_List.Item;

    use type String_List.Item;

  begin -- Source_List_Of
    Ada.Text_IO.Open (File, Ada.Text_IO.In_File, Filename);
    while not Ada.Text_IO.End_Of_File (File) loop
      The_Source_Line := Server.Line_Number'succ(The_Source_Line);
      declare
        Line             : constant String := Strings.Trimmed (Ada.Text_IO.Get_Line (File));
        Comment_Position : constant Natural := Text.Location_Of ("//", Line);
        The_Last         : Natural := Line'last;
      begin
        if Comment_Position /= Text.Not_Found then
          The_Last := Comment_Position - 1;
        end if;
        declare
          Source : constant String := Strings.Trimmed (Line(Line'first .. The_Last));
        begin
          if Source /= "" then
            The_List := The_List + Source_Of (Source);
          end if;
        end;
      end;
    end loop;
    Ada.Text_IO.Close (File);
    return The_List;
  exception
  when others =>
    Ada.Text_IO.Close (File);
    raise;
  end Source_List_Of;


  function Include_Path_Of (Filename : String) return String is
    Include_Prefix : constant String := " -I=";
    Directory      : constant String := Directory_Of (Filename);
  begin
    if (Directory & Separator) = Area_Folder then
      return "";
    end if;
    return Include_Prefix & Directory & Include_Path_Of (Directory);
  end Include_Path_Of;


  function Project_Part_Of (Filename : String) return String is
    Source_Base : constant String := Area_Folder;
  begin
    if Filename(Filename'first .. Filename'first + Source_Base'length - 1) = Source_Base then
      return Filename(Filename'first + Source_Base'length .. Filename'last);
    end if;
    Log.Write ("!!! Project_Part_Of " & Filename & " unknown");
    raise Program_Error;
  end Project_Part_Of;


  function Binary_Folder_Of (Filename : String) return String is
    Project_Area : constant String := Directory_Of (Project_Part_Of (Filename));
  begin
    return Binary_Folder & Project_Area & Separator;
  end Binary_Folder_Of;


  function Object_Of (Filename : String) return String is
    Object_Folder : constant String := Binary_Folder_Of (Filename);
  begin
    Create_Folder (Object_Folder);
    return Object_Folder & Module_Of (Filename) & ".eao";
  end Object_Of;


  function Objects_Of (Sources : String_List.Item) return String is
    The_Objects : String_List.Item;
    use type String_List.Item;
  begin
    for Source of Sources loop
      The_Objects := The_Objects + Object_Of (Source);
    end loop;
    return Strings.Concatenation_Of (The_Objects);
  end Objects_Of;


  function Linker_Output_Of (Filename : String) return String is
  begin
    return Product_Folder & Module_Of (Filename) & Product_Extension;
  end Linker_Output_Of;


  function Link_Map_Of (Filename : String) return String is
  begin
    return Product_Folder & Module_Of (Filename) & ".map";
  end Link_Map_Of;


  procedure Delete (Filename : String) is
  begin
    Windows.Files.Delete_File (Filename);
  exception
  when others =>
    null;
  end Delete;


  function Is_Newer (Filename      : String;
                     Than_Filename : String) return Boolean renames Windows.Files.Is_Newer;


  function Is_Uptodate (Generated_Filename : String;
                        From_Filename      : String) return Boolean is
  begin
    begin
      if not Is_Newer (From_Filename, Generated_Filename) then
        return True;
      end if;
    exception
    when others =>
      null;
    end;
    Delete (Generated_Filename);
    return False;
  end Is_Uptodate;

end Project;
