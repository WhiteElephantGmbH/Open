-- *********************************************************************************************************************
-- *                           (c) 2008 .. 2014 by Soudronic AG, Bergdietikon, Switzerland                             *
-- *                      Developed by White Elephant GmbH, Switzerland (www.white-elephant.ch)                        *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Strings;

package Server is

  Project_File : constant String := "Project.ini";

  subtype Source_Buffer is String(1 .. 2**20);

  Bits_For_Column_Counter : constant := 12;
  Bits_For_Line_Counter   : constant := 32 - Bits_For_Column_Counter;

  type Column_Position is new Natural range 0 .. 2 ** Bits_For_Column_Counter - 1;
  for Column_Position'size use Bits_For_Column_Counter;

  subtype Column_Range is Column_Position range 1 .. Column_Position'last;

  type Line_Counter is new Natural range 0 .. 2 ** Bits_For_Line_Counter - 1;
  for Line_Counter'size use Bits_For_Line_Counter;

  subtype Line_Number is Line_Counter range 1 .. Line_Counter'last;

  type Command is (Open_Project,
                   Close_Project,
                   Get_Extensions,
                   Is_In_Project,
                   Updates_For,
                   Referenced,
                   Promote,
                   Promote_All,
                   Has_Promotion_Message,
                   Has_Promotion_Error,
                   Get_Filename,
                   Get_Message,
                   Usage,
                   Unused);

  Confirmation  : constant Character := Ascii.Ack;
  Not_Confirmed : constant Character := Ascii.Nak;

  type Location is record
    Column : Column_Range;
    Line   : Line_Number;
  end record;

  Not_Referenced : constant Location := (Column   => Column_Range'last,
                                         Line     => Line_Number'last);

  type File_Reference is record
    Cursor      : Location;
    File_Index  : Positive;
    Image_Index : Positive;
  end record;

  type File_References is array (Line_Counter range <>) of File_Reference;
  pragma Pack (File_References);

  type References (Files_Count     : Strings.Element_Count;
                   Files_Length    : Strings.Data_Length;
                   Images_Count    : Strings.Element_Count;
                   Images_Length   : Strings.Data_Length;
                   Reference_Count : Line_Counter) is record
    Filenames   : aliased Strings.Item(Count => Files_Count, Length => Files_Length);
    Line_Images : aliased Strings.Item(Count => Images_Count, Length => Images_Length);
    Locations   : aliased File_References(1..Reference_Count);
  end record;
  pragma Pack (References);

  No_References : constant References := (0, 0, 0, 0, 0, others => <>);

  type Token_Kind is (Is_Comment,
                      Is_Directive,
                      Is_Reserved_Word,
                      Is_Numeric_Literal,
                      Is_String_Literal,
                      Is_Type,
                      Is_Unused_Declaration,
                      Is_Unused_Type_Declaration,
                      Is_Unknown_Identifier,
                      Is_Style_Error,
                      Is_Error,
                      Is_Compilation_Error,
                      Is_Others);

  type Token_Info is record
    First_Line   : Line_Number;
    First_Column : Column_Range;
    Last_Line    : Line_Number;
    Last_Column  : Column_Range;
    Kind         : Token_Kind;
  end record;
  pragma Pack (Token_Info);

  type Tokens is array (Positive range <>) of Token_Info;
  pragma Pack (Tokens);


  function Is_In_Project (Name : String) return Boolean;

  function Project_Opened (Name : String) return Boolean;

  procedure Close_Project;

  function Known_Extensions return String;

  function Updates_For (Filename   : String;
                        First_Line : Line_Number;
                        Last_Line  : Line_Number;
                        Marks      : Tokens;
                        Content    : String) return Tokens;

  function Referenced (Filename : String;
                       Column   : Column_Range;
                       Line     : Line_Number;
                       Content  : String) return Boolean;

  function Usage (Filename : String;
                  Column   : Column_Range;
                  Line     : Line_Number;
                  Content  : String) return References;

  function Unused return References;

  procedure Promote (Name   : String;
                     Is_All : Boolean := False);

  function Has_Promotion_Message return Boolean;

  function Has_Promotion_Error return Boolean;

  function Filename return String;
  function Column return Column_Range;
  function Line return Line_Number;

  function Message return String;

end Server;
