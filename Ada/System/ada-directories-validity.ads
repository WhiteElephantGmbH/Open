------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--             A D A . D I R E C T O R I E S . V A L I D I T Y              --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2004-2009, Free Software Foundation, Inc.         --
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

--  This private child package is used in the body of Ada.Directories.
--  It has several bodies, for different platforms.

private package Ada.Directories.Validity is

   function Is_Valid_Simple_Name (Name : String) return Boolean;
   --  Returns True if Name is a valid file name

   function Is_Valid_Path_Name (Name : String) return Boolean;
   --  Returns True if Name is a valid path name

   function Is_Path_Name_Case_Sensitive return Boolean;
   --  Returns True if file and path names are case-sensitive

   function OpenVMS return Boolean;
   --  Return True when OS is OpenVMS

   function Windows return Boolean;
   --  Return True when OS is Windows

end Ada.Directories.Validity;
