------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--            S Y S T E M . F A T _ I E E E _ L O N G _ F L O A T           --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2009, Free Software Foundation, Inc.         --
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

--  This package contains an instantiation of the floating-point attribute
--  runtime routines for IEEE long float. This is used on VMS targets where
--  we can't just use Long_Float, since this may have been mapped to Vax_Float
--  using a Float_Representation configuration pragma.

with System.Fat_Gen;

package System.Fat_IEEE_Long_Float is
   pragma Pure;

   type Fat_IEEE_Long is digits 15;
   pragma Float_Representation (IEEE_Float, Fat_IEEE_Long);

   --  Note the only entity from this package that is accessed by Rtsfind
   --  is the name of the package instantiation. Entities within this package
   --  (i.e. the individual floating-point attribute routines) are accessed
   --  by name using selected notation.

   package Attr_IEEE_Long is new System.Fat_Gen (Fat_IEEE_Long);

end System.Fat_IEEE_Long_Float;
