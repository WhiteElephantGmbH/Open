-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Strings.Fixed;
with Ada.Strings.Maps;

package body Strings is

  package Map renames Ada.Strings.Maps;

  function "<" (Left  : Character;
                Right : Map.Character_Set) return Boolean renames Map.Is_In;

  Line_Break  : constant Map.Character_Set := Map.To_Set (Ascii.Cr & Ascii.Lf);
  White_Space : constant Map.Character_Set := Map.To_Set (Space & Ascii.Ht & Ascii.Cr & Ascii.Lf);


  function Is_Lowercase (The_String : String) return Boolean is
  begin
    for The_Index in The_String'range loop
      if Is_Uppercase (The_String(The_Index)) then
        return False;
      end if;
    end loop;
    return True;
  end Is_Lowercase;


  function Is_Uppercase (The_String : String) return Boolean is
  begin
    for The_Index in The_String'range loop
      if Is_Lowercase (The_String(The_Index)) then
        return False;
      end if;
    end loop;
    return True;
  end Is_Uppercase;


  function Found (The_Character : Character;
                  In_String     : String) return Boolean is
  begin
    for Character of In_String loop
      if Character = The_Character then
        return True;
      end if;
    end loop;
    return False;
  end Found;


  function Location_Of (The_Character : Character;
                        In_String     : String;
                        The_Direction : Direction := Forward) return Natural is
  begin
    return Ada.Strings.Fixed.Index (Source  => In_String,
                                    Pattern => (1 => The_Character),
                                    Going   => Ada.Strings.Direction(The_Direction));
  end Location_Of;


  function Location_Of (The_String    : String;
                        In_String     : String;
                        The_Direction : Direction := Forward) return Natural is
  begin
    return Ada.Strings.Fixed.Index (Source  => In_String,
                                    Pattern => The_String,
                                    Going   => Ada.Strings.Direction(The_Direction));
  end Location_Of;


  function Trimmed (Data : String) return String is
    The_First : Natural;
    The_Last  : Natural;
  begin
    if Data = "" then
      return "";
    end if;
    The_First := Data'first;
    The_Last  := Data'last;
    while The_First <= The_Last and then Data(The_First) <= ' ' loop
      The_First := The_First + 1;
    end loop;
    if The_First > The_Last then
      return "";
    end if;
    while Data(The_Last) <= ' ' loop
      The_Last := The_Last - 1;
    end loop;
    return Data(The_First .. The_Last);
  end Trimmed;


  function Concatenation_Of (List      : String_List.Item;
                             Separator : String := " ") return String is
    The_Length : Natural := 0;
  begin
    for Text of List loop
      The_Length := The_Length + Text'length + Separator'length;
    end loop;
    declare
      The_String : String(1..The_Length);
      The_First  : Positive;
      The_Last   : Natural := The_String'first - 1;
    begin
      for Text of List loop
        The_First := The_Last + 1;
        The_Last := The_First + Text'length + Separator'length - 1;
        The_String (The_First .. The_Last) := Text & Separator;
      end loop;
      return The_String;
    end;
  end Concatenation_Of;


  function Legible_Of (The_String : String) return String is
    Legible_String : String (1 .. The_String'length);
    The_Size       : Natural := 0;
    Am_In_Gap      : Boolean := True;
    The_Character  : Character;
  begin
    for The_Index in The_String'range loop
      The_Size := The_Size + 1;
      The_Character := The_String (The_Index);
      if The_Character = '_' then
        The_Character := Space; -- Substitute underscores with spaces
      end if;
      if The_Character = Space then
        if Am_In_Gap then  -- Multiple space
          The_Size := The_Size - 1;  -- Overwrite previous
        else
          Am_In_Gap := True;
        end if;
      elsif Am_In_Gap then
        The_Character := Uppercase_Of (The_Character);
        Am_In_Gap := False;
      else
        The_Character := Lowercase_Of (The_Character);
      end if;
      if The_Size > 0 then  -- Ignore leading spaces
        Legible_String (The_Size) := The_Character;
      end if;
    end loop;
    if (The_Size > 0) and Am_In_Gap then -- Remove trailing space
      The_Size := The_Size - 1;
    end if;
    return Legible_String (1 .. The_Size);
  end Legible_Of;


  function Reduced (The_String : String) return String is

    type Separator is (None, Blank, New_Line);

    Reduced_String : String (1 .. The_String'length);
    The_Size       : Natural := 0;
    The_Separator  : Separator := None;
    The_Character  : Character;

  begin
    for The_Index in The_String'range loop
      The_Character := The_String (The_Index);
      if The_Character < White_Space then
        if The_Size /= 0 then -- not leading white spaces
          if The_Separator /= New_Line then
            if The_Character < Line_Break then
              The_Separator := New_Line;
            else
              The_Separator := Blank;
            end if;
          end if;
        end if;
      else
        The_Size := The_Size + 1;
        case The_Separator is
        when Blank =>
          Reduced_String(The_Size) := Space;
          The_Size := The_Size + 1;
        when New_Line =>
          Reduced_String (The_Size) := Ascii.Cr;
          The_Size := The_Size + 1;
        when None =>
          null;
        end case;
        The_Separator := None;
        Reduced_String (The_Size) := The_Character;
      end if;
    end loop;
    return Reduced_String (1 .. The_Size);
  end Reduced;


  function Image_Of (The_Value : Element) return String is
  begin
    return Trimmed (Element'image(The_Value));
  end Image_Of;


  function Padded_Image_Of (The_Value : Element;
                            Padding   : Character := '0') return String is

    function Image is new Image_Of (Element);

    Item : constant String  := Image(The_Value);

  begin
    if The_Value < Element'val(0) then
      raise Usage_Error;
    end if;
    return Ada.Strings.Fixed."*"(Element'width - Item'length - 1, Padding) & Item;
  end Padded_Image_Of;


  function File_Extension_Of (The_Filename : String) return String is
  begin
    for The_Position in reverse The_Filename'range loop
      exit when (The_Filename (The_Position) = '\') or (The_Filename (The_Position) = '/');
      if The_Filename (The_Position) = '.' then
        return Lowercase_Of (The_Filename (The_Position + 1 .. The_Filename'last));
      end if;
    end loop;
    return "";
  end File_Extension_Of;

-------------------------------------------------------------------------------

  function "+" (Left  : Element_Positions;
                Right : Natural) return Element_Positions is -- incremented Positions
    pragma Inline ("+");

     The_Positions : Element_Positions := Left;

  begin
     for Index in The_Positions'range loop
       The_Positions(Index) := Position(Natural(The_Positions(Index)) + Right);
     end loop;
     return The_Positions;
  end "+";


  function "+" (Left  : String;
                Right : String) return Item is
  begin
    return Item'(Count     => 2,
                 Length    => Left'length + Right'length,
                 Positions => (First, First + Left'length),
                 Data      => Left & Right);
  end "+";


  function "+" (Left  : Item;
                Right : String) return Item is
  begin
    return Item'(Length    => Left.Length + Right'length,
                 Count     => Left.Count + 1,
                 Positions => Left.Positions & Position'(First + Position(Left.Length)),
                 Data      => Left.Data & Right);
  end "+";


  function "+" (Left  : String;
                Right : Item) return Item is
  begin
    return Item'(Length    => Left'length + Right.Length,
                 Count     => Right.Count + 1,
                 Positions => First & (Right.Positions + Left'length),
                 Data      => Left & Right.Data);
  end "+";


  function "+" (Left  : Item;
                Right : Item) return Item is
  begin
    return Item'(Length    => Left.Length + Right.Length,
                 Count     => Left.Count + Right.Count,
                 Positions => Left.Positions & (Right.Positions + Left.Length),
                 Data      => Left.Data & Right.Data);
  end "+";


  function "+" (Data : String) return Item is
  begin
    return Item'(Count     => 1,
                 Length    => Data'length,
                 Positions => Element_Positions'(1 => First),
                 Data      => Data);
  end "+";


  function Element_Of (List  : Item;
                       Index : Element_Index) return String is

    List_Position : constant Natural := Natural(List.Positions(Index));

  begin
    if Index < List.Count then
       return List.Data(List_Position .. Natural(List.Positions(Index + 1) - 1));
    end if;
    return List.Data(List_Position .. List.Data'last);
  end Element_Of;


  function Length_Of (List  : Item;
                      Index : Element_Index) return Natural is

    List_Position : constant Position := List.Positions(Index);

  begin
     if Index < List.Count then
        return Natural(List.Positions(Index + 1) - List_Position);
     end if;
     return List.Data'last + 1 - Natural(List_Position);
  end Length_Of;


  function First_Of (List : Item) return String is
  begin
    return Element_Of (List, First);
  end First_Of;


  function Last_Of (List : Item) return String is
  begin
    return Element_Of (List, List.Count);
  end Last_Of;


  function Data_Of (List      : Item;
                    Separator : String := "") return String is
  begin
    if List.Count = 0 then
      return "";
    elsif List.Count = 1 then
      return List.Data;
    else
      declare
        The_Data     : String(1 .. (List.Count - 1) * Separator'length + List.Length);
        The_Position : Natural := First;
      begin
        for Index in List.Positions'first..List.Positions'last - 1 loop
          declare
            Data : constant String := Element_Of (List, Index) & Separator;
          begin
            The_Data(The_Position .. The_Position + Data'length - 1) := Data;
            The_Position := The_Position + Data'length;
          end;
        end loop;
        The_Data(The_Position .. The_Data'last) := Element_Of (List, List.Count);
        return The_Data;
      end;
    end if;
  end Data_Of;


  function Data_Of (List      : String_List.Item;
                    Separator : String := "") return String is
    The_Length : Natural := List.Count;
  begin
    if The_Length = 0 then
      return "";
    elsif The_Length = 1 then
      return List.First_Element;
    else
      The_Length := The_Length * Separator'length;
      for Element of List loop
        The_Length := The_Length + Element'length;
      end loop;
      declare
        The_Data     : String(1 .. The_Length);
        The_Position : Natural := First;
      begin
        for Element of List loop
          declare
            Data : constant String := Element & Separator;
          begin
            The_Data(The_Position .. The_Position + Data'length - 1) := Data;
            The_Position := The_Position + Data'length;
          end;
        end loop;
        return The_Data(The_Data'first .. The_Length - Separator'length);
      end;
    end if;
  end Data_Of;


  function Item_Of (Data      : String;
                    Separator : Character;
                    Symbols   : String := "") return Item is
      The_Count  : Element_Count := 1;
      The_Length : Natural := 0;
   begin
     for Character of Data loop
       if Character = Separator then
         The_Count := Element_Count'succ(The_Count);
       else
         if Found (Character, Symbols) then
           The_Count := The_Count + 2;
         end if;
         The_Length := Natural'succ(The_Length);
       end if;
     end loop;
     declare
       The_Index    : Element_Index := First;
       The_Position : Position := First;
       The_Strings  : Item(Count  => The_Count,
                           Length => The_Length);
     begin
       The_Strings.Positions(The_Index) := The_Position;
       for Index in Data'range loop
         if Data(Index) = Separator then
           The_Index := Element_Index'succ(The_Index);
           The_Strings.Positions(The_Index) := The_Position;
         elsif Found (Data(Index), Symbols) then
           The_Index := Element_Index'succ(The_Index);
           The_Strings.Positions(The_Index) := The_Position;
           The_Strings.Data(Natural(The_Position)) := Data(Index);
           The_Position := Position'succ(The_Position);
           The_Index := Element_Index'succ(The_Index);
           The_Strings.Positions(The_Index) := The_Position;
         else
           The_Strings.Data(Natural(The_Position)) := Data(Index);
           The_Position := Position'succ(The_Position);
         end if;
       end loop;
       return The_Strings;
     end;
   end Item_Of;


  function Purge_Of (List : Item) return Item is
    The_Count    : Natural := List.Count;
  begin
    for Index in First .. List.Count loop
      if Length_Of (List, Index) = 0 then
        The_Count := The_Count - 1;
      end if;
    end loop;
    declare
      The_Index   : Natural := First;
      The_Strings : Item(Count  => The_Count,
                         Length => List.Length);
    begin
      for Index in First .. List.Count loop
        if Length_Of (List, Index) /= 0 then
          The_Strings.Positions(The_Index) := List.Positions(Index);
          The_Index := The_Index + 1;
        end if;
      end loop;
      The_Strings.Data := List.Data;
      return The_Strings;
    end;
  end Purge_Of;


  function Item_Of (List      : Item;
                    Selection : Slice) return Item is
    The_Length : Natural;
  begin
    if Selection.Last < Selection.First then
      return None;
    end if;
    if Selection.Last = List.Count then
      The_Length := List.Length + First - Natural(List.Positions(Selection.First));
    else
      The_Length := Natural(List.Positions(Selection.Last + 1) - List.Positions(Selection.First));
    end if;
    declare
      Count        : constant Element_Count := Selection.Last + 1 - Selection.First;
      The_Position : Position := First;
      The_Strings  : Item(Count  => Count,
                          Length => The_Length);
    begin
      for Index in Selection.First .. Selection.Last loop
        declare
          Data : constant String := Element_Of (List, Index);
        begin
          The_Strings.Data(Natural(The_Position) .. Natural(The_Position) + Data'length - 1) := Data;
          The_Strings.Positions(Index + 1 - Selection.First) := The_Position;
          The_Position := The_Position + Data'length;
        end;
      end loop;
      return The_Strings;
    end;
  end Item_Of;


  function Item_Of (List : String_List.Item) return Item is
    The_Length : Natural := 0;
  begin
    for Text of List loop
      The_Length := The_Length + Text'length;
    end loop;
    declare
      The_Position : Position := First;
      The_Index    : Natural := First;
      The_Strings  : Item(Count  => Element_Count(List.Length),
                          Length => The_Length);
    begin
      for Text of List loop
        The_Strings.Data(Natural(The_Position) .. Natural(The_Position) + Text'length - 1) := Text;
        The_Strings.Positions(The_Index) := The_Position;
        The_Index := The_Index + 1;
        The_Position := The_Position + Text'length;
      end loop;
      return The_Strings;
    end;
  end Item_Of;


  function List_Of (List : Item) return String_List.Item is
    The_List : String_List.Item;
    use type String_List.Item;
  begin
    for Index in List.Positions'range loop
      The_List := The_List + Element_Of (List, Index);
    end loop;
    return The_List;
  end List_Of;


  function Trimmed_List_Of (List : Item) return String_List.Item is
    The_List : String_List.Item;
    use type String_List.Item;
  begin
    for Index in List.Positions'range loop
      The_List := The_List + Trimmed (Element_Of (List, Index));
    end loop;
    return The_List;
  end Trimmed_List_Of;


  procedure Iterator (List : Item) is
  begin
    for Index in List.Positions'range loop
      Handler (Element_Of (List, Index));
    end loop;
  end Iterator;


  function Creator return Item is
    The_Length : Natural := 0;
  begin
    for C in 1 .. Count loop --> UD: count only
      The_Length := The_Length + Next_Length;
    end loop;
    declare
      The_Strings  : Item(Count  => Count,
                          Length => The_Length);
      The_Position : Position := First;
    begin
      for Index in 1 .. Count loop
        declare
          Data : constant String := Next_String;
        begin
          The_Strings.Data(Natural(The_Position) .. Natural(The_Position) + Data'length - 1) := Data;
          The_Strings.Positions(Index) := The_Position;
          The_Position := The_Position + Data'length;
        end;
      end loop;
      return The_Strings;
    end;
  end Creator;


  function Indexed_Creator return Item is
    The_Length : Natural := 0;
  begin
    for Index in From .. To loop
      The_Length := The_Length + Next_Length (Index);
    end loop;
    declare
      The_Strings  : Item(Count  => To - From + 1,
                          Length => The_Length);
      The_Position : Position := First;
    begin
      for Index in From .. To loop
        declare
          Data : constant String := Next_String (Index);
        begin
          The_Strings.Data(Natural(The_Position) .. Natural(The_Position) + Data'length - 1) := Data;
          The_Strings.Positions(The_Strings.Positions'first - From + Index) := The_Position;
          The_Position := The_Position + Data'length;
        end;
      end loop;
      return The_Strings;
    end;
  end Indexed_Creator;


  function Creator_From (List : Item) return Item is
    The_Length : Natural := 0;
  begin
    for Index in 1 .. List.Count loop
      The_Length := The_Length + Mapped_String_Of (Element_Of(List, Index))'length;
    end loop;
    declare
      The_Strings  : Item(Count  => List.Count,
                          Length => The_Length);
      The_Position : Position := First;
    begin
      for Index in 1 .. List.Count loop
        declare
          Data : constant String := Mapped_String_Of (Element_Of(List, Index));
        begin
          The_Strings.Data(Natural(The_Position) .. Natural(The_Position) + Data'length - 1) := Data;
          The_Strings.Positions(Index) := The_Position;
          The_Position := The_Position + Data'length;
        end;
      end loop;
      return The_Strings;
    end;
  end Creator_From;

end Strings;
