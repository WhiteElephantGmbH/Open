------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--           A D A . T E X T _ I O . E N U M E R A T I O N _ I O            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2009, Free Software Foundation, Inc.         --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the  contents of the part following the private keyword. --
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

--  In Ada 95, the package Ada.Text_IO.Enumeration_IO is a subpackage of
--  Text_IO. This is for compatibility with Ada 83. In GNAT we make it a
--  child package to avoid loading the necessary code if Enumeration_IO is
--  not instantiated. See routine Rtsfind.Text_IO_Kludge for a description
--  of how we patch up the difference in semantics so that it is invisible
--  to the Ada programmer.

private generic
   type Enum is (<>);

package Ada.Text_IO.Enumeration_IO is

   Default_Width : Field := 0;
   Default_Setting : Type_Set := Upper_Case;

   procedure Get (File : File_Type; Item : out Enum);
   procedure Get (Item : out Enum);

   procedure Put
     (File  : File_Type;
      Item  : Enum;
      Width : Field := Default_Width;
      Set   : Type_Set := Default_Setting);

   procedure Put
     (Item  : Enum;
      Width : Field := Default_Width;
      Set   : Type_Set := Default_Setting);

   procedure Get
     (From : String;
      Item : out Enum;
      Last : out Positive);

   procedure Put
     (To   : out String;
      Item : Enum;
      Set  : Type_Set := Default_Setting);

end Ada.Text_IO.Enumeration_IO;