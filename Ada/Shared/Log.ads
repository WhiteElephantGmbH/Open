-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2013 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Exceptions;
with Unsigned;

package Log is

  type Category is private;

  Debug : constant Category;

  function "&" (Left, Right : Category) return Category;

  function Lookup (The_Category : String) return Category;

  procedure Open (Use_Flush : Boolean := False);

  procedure Write (The_String   : String;
                   The_Category : Category := Debug);

  procedure Write (Occurrence : Ada.Exceptions.Exception_Occurrence);

  procedure Write (Reason     : String;
                   Occurrence : Ada.Exceptions.Exception_Occurrence);

private

  type Category is new Unsigned.Longword;

  Debug : constant Category := 1;

end Log;
