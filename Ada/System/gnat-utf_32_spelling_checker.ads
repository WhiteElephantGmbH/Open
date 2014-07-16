------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          G N A T . U T F _ 3 2 _ S P E L L I N G _ C H E C K E R         --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                     Copyright (C) 1998-2010, AdaCore                     --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- In particular,  you can freely  distribute your programs  built with the --
-- GNAT Pro compiler, including any required library run-time units,  using --
-- any licensing terms  of your choosing.  See the AdaCore Software License --
-- for full details.                                                        --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Spelling checker

--  This package provides a utility routine for checking for bad spellings
--  for the case of System.WCh_Cnv.UTF_32_String arguments.

pragma Compiler_Unit;

with System.WCh_Cnv;

package GNAT.UTF_32_Spelling_Checker is
   pragma Pure;

   function Is_Bad_Spelling_Of
     (Found  : System.WCh_Cnv.UTF_32_String;
      Expect : System.WCh_Cnv.UTF_32_String) return Boolean;
   --  Determines if the string Found is a plausible misspelling of the string
   --  Expect. Returns True for an exact match or a probably misspelling, False
   --  if no near match is detected. This routine is case sensitive, so the
   --  caller should fold both strings to get a case insensitive match.
   --
   --  Note: the spec of this routine is deliberately rather vague. It is used
   --  by GNAT itself to detect misspelled keywords and identifiers, and is
   --  heuristically adjusted to be appropriate to this usage. It will work
   --  well in any similar case of named entities.

end GNAT.UTF_32_Spelling_Checker;
