-- *********************************************************************************************************************
-- *                           (c) 2013 by White Elephant GmbH, Schaffhausen, Switzerland                              *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with GNAT.Traceback.Symbolic;
with Strings;

package body Exceptions is

  function Information_Of (Occurrence : Ada.Exceptions.Exception_Occurrence) return String is
  begin
    declare
      Traceback : constant String := GNAT.Traceback.Symbolic.Symbolic_Traceback (Occurrence);
    begin
      if Strings.Trimmed (Traceback) = "" then
        return Ada.Exceptions.Exception_Information (Occurrence);
      else
        return "Exception: " & Ada.Exceptions.Exception_Name (Occurrence) & Ascii.Lf & Traceback;
      end if;
    end;
  end Information_Of;

end Exceptions;