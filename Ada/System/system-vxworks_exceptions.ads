------------------------------------------------------------------------------
--                                                                          --
--                  GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                --
--                                                                          --
--              S Y S T E M . V X W O R K S _ E X C E P T I O N S           --
--                                                                          --
--                                   S p e c                                --
--                                                                          --
--           Copyright (C) 2004-2005 Free Software Foundation, Inc.         --
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
-- GNARL was developed by the GNARL team at Florida State University.       --
-- Extensive contributions were provided by Ada Core Technologies, Inc.     --
--                                                                          --
------------------------------------------------------------------------------

--  This package contains the low level initialization routines to deal with
--  the VxWorks specificities regarding the Exception Handling circuitry.

package System.VxWorks_Exceptions is

   procedure Setup_For_EH;
   pragma Export (C, Setup_For_EH, "__gnat_vxw_setup_for_eh");
   --  Perform the necessary low level actions required to support the Ada
   --  level EH circuitry to work, such as registering the exception tables in
   --  the ZCX case. This routine has no effect in a SJLJ runtime.
   --
   --  This is to be called by the early run-time library initialization
   --  routine (__gnat_initialize) on targets where the ZCX scheme is
   --  supported.

end System.VxWorks_Exceptions;
