------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                         G N A T . A L T I V E C                          --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2004-2011, Free Software Foundation, Inc.         --
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

-------------------------
-- General description --
-------------------------

--  This is the root of a package hierarchy offering an Ada binding to the
--  PowerPC AltiVec extensions, a set of 128bit vector types together with a
--  set of subprograms operating on them. Relevant documents are:

--  o AltiVec Technology, Programming Interface Manual (1999-06)
--    to which we will refer as [PIM], describes the data types, the
--    functional interface and the ABI conventions.

--  o AltiVec Technology, Programming Environments Manual (2002-02)
--    to which we will refer as [PEM], describes the hardware architecture
--    and instruction set.

--  These documents, as well as a number of others of general interest on the
--  AltiVec technology, are available from the Motorola/AltiVec Web site at:

--  http://www.freescale.com/altivec

--  The binding interface is structured to allow alternate implementations:
--  for real AltiVec capable targets, and for other targets. In the latter
--  case, everything is emulated in software. The two versions are referred
--  to as:

--  o The Hard binding for AltiVec capable targets (with the appropriate
--    hardware support and corresponding instruction set)

--  o The Soft binding for other targets (with the low level primitives
--    emulated in software).

--  In addition, interfaces that are not strictly part of the base AltiVec API
--  are provided, such as vector conversions to and from array representations,
--  which are of interest for client applications (e.g. for vector
--  initialization purposes).

--  Only the soft binding is available today

-----------------------------------------
-- General package architecture survey --
-----------------------------------------

--  The various vector representations are all "containers" of elementary
--  values, the possible types of which are declared in this root package to
--  be generally accessible.

--  From the user standpoint, the binding materializes as a consistent
--  hierarchy of units:

--                             GNAT.Altivec
--                           (component types)
--                                   |
--          o----------------o----------------o-------------o
--          |                |                |             |
--    Vector_Types   Vector_Operations   Vector_Views   Conversions

--  The user can manipulate vectors through two families of types: Vector
--  types and View types.

--  Vector types are defined in the GNAT.Altivec.Vector_Types package

--  On these types, users can apply the Altivec operations defined in
--  GNAT.Altivec.Vector_Operations. Their layout is opaque and may vary across
--  configurations, for it is typically target-endianness dependant.

--  Vector_Types and Vector_Operations implement the core binding to the
--  AltiVec API, as described in [PIM-2.1 data types] and [PIM-4 AltiVec
--  operations and predicates].

--  View types are defined in the GNAT.Altivec.Vector_Views package

--  These types do not represent Altivec vectors per se, in the sense that the
--  Altivec_Operations are not available for them. They are intended to allow
--  Vector initializations as well as access to the Vector component values.

--  The GNAT.Altivec.Conversions package is provided to convert a View to the
--  corresponding Vector and vice-versa.

---------------------------
-- Underlying principles --
---------------------------

--  Internally, the binding relies on an abstraction of the Altivec API, a
--  rich set of functions around a core of low level primitives mapping to
--  AltiVec instructions. See for instance "vec_add" in [PIM-4.4 Generic and
--  Specific AltiVec operations], with no less than six result/arguments
--  combinations of byte vector types that map to "vaddubm".

--  The "soft" version is a software emulation of the low level primitives.

--  The "hard" version would map to real AltiVec instructions via GCC builtins
--  and inlining.

-------------------
-- Example usage --
-------------------

--  Here is a sample program declaring and initializing two vectors, 'add'ing
--  them and displaying the result components:

--  with GNAT.Altivec.Vector_Types;      use GNAT.Altivec.Vector_Types;
--  with GNAT.Altivec.Vector_Operations; use GNAT.Altivec.Vector_Operations;
--  with GNAT.Altivec.Vector_Views;      use GNAT.Altivec.Vector_Views;
--  with GNAT.Altivec.Conversions;       use GNAT.Altivec.Conversions;

--  use GNAT.Altivec;

--  with Ada.Text_IO; use Ada.Text_IO;

--  procedure Sample is
--     Va : Vector_Unsigned_Int := To_Vector ((Values => (1, 2, 3, 4)));
--     Vb : Vector_Unsigned_Int := To_Vector ((Values => (1, 2, 3, 4)));

--     Vs : Vector_Unsigned_Int;
--     Vs_View : VUI_View;
--  begin
--     Vs := Vec_Add (Va, Vb);
--     Vs_View := To_View (Vs);

--     for I in Vs_View.Values'Range loop
--        Put_Line (Unsigned_Int'Image (Vs_View.Values (I)));
--     end loop;
--  end;

--  $ gnatmake sample.adb
--  [...]
--  $ ./sample
--  2
--  4
--  6
--  8

------------------------------------------------------------------------------

with System;

package GNAT.Altivec is

   --  Definitions of constants and vector/array component types common to all
   --  the versions of the binding.

   --  All the vector types are 128bits

   VECTOR_BIT : constant := 128;

   -------------------------------------------
   -- [PIM-2.3.1 Alignment of vector types] --
   -------------------------------------------

   --  "A defined data item of any vector data type in memory is always
   --  aligned on a 16-byte boundary. A pointer to any vector data type always
   --  points to a 16-byte boundary. The compiler is responsible for aligning
   --  vector data types on 16-byte boundaries."

   VECTOR_ALIGNMENT : constant := Natural'Min (16, Standard'Maximum_Alignment);
   --  This value is used to set the alignment of vector datatypes in both the
   --  hard and the soft binding implementations.
   --
   --  We want this value to never be greater than 16, because none of the
   --  binding implementations requires larger alignments and such a value
   --  would cause useless space to be allocated/wasted for vector objects.
   --  Furthermore, the alignment of 16 matches the hard binding leading to
   --  a more faithful emulation.
   --
   --  It needs to be exactly 16 for the hard binding, and the initializing
   --  expression is just right for this purpose since Maximum_Alignment is
   --  expected to be 16 for the real Altivec ABI.
   --
   --  The soft binding doesn't rely on strict 16byte alignment, and we want
   --  the value to be no greater than Standard'Maximum_Alignment in this case
   --  to ensure it is supported on every possible target.

   -------------------------------------------------------
   -- [PIM-2.1] Data Types - Interpretation of contents --
   -------------------------------------------------------

   ---------------------
   -- char components --
   ---------------------

   CHAR_BIT    : constant := 8;
   SCHAR_MIN   : constant := -2 ** (CHAR_BIT - 1);
   SCHAR_MAX   : constant := 2 ** (CHAR_BIT - 1) - 1;
   UCHAR_MAX   : constant := 2 ** CHAR_BIT - 1;

   type unsigned_char is mod UCHAR_MAX + 1;
   for unsigned_char'Size use CHAR_BIT;

   type signed_char is range SCHAR_MIN .. SCHAR_MAX;
   for signed_char'Size use CHAR_BIT;

   subtype bool_char is unsigned_char;
   --  ??? There is a difference here between what the Altivec Technology
   --  Programming Interface Manual says and what GCC says. In the manual,
   --  vector_bool_char is a vector_unsigned_char, while in altivec.h it
   --  is a vector_signed_char.

   bool_char_True  : constant bool_char := bool_char'Last;
   bool_char_False : constant bool_char := 0;

   ----------------------
   -- short components --
   ----------------------

   SHORT_BIT   : constant := 16;
   SSHORT_MIN  : constant := -2 ** (SHORT_BIT - 1);
   SSHORT_MAX  : constant := 2 ** (SHORT_BIT - 1) - 1;
   USHORT_MAX  : constant := 2 ** SHORT_BIT - 1;

   type unsigned_short is mod USHORT_MAX + 1;
   for unsigned_short'Size use SHORT_BIT;

   subtype unsigned_short_int is unsigned_short;

   type signed_short is range SSHORT_MIN .. SSHORT_MAX;
   for signed_short'Size use SHORT_BIT;

   subtype signed_short_int is signed_short;

   subtype bool_short is unsigned_short;
   --  ??? See bool_char

   bool_short_True  : constant bool_short := bool_short'Last;
   bool_short_False : constant bool_short := 0;

   subtype bool_short_int is bool_short;

   --------------------
   -- int components --
   --------------------

   INT_BIT     : constant := 32;
   SINT_MIN    : constant := -2 ** (INT_BIT - 1);
   SINT_MAX    : constant := 2 ** (INT_BIT - 1) - 1;
   UINT_MAX    : constant := 2 ** INT_BIT - 1;

   type unsigned_int is mod UINT_MAX + 1;
   for unsigned_int'Size use INT_BIT;

   type signed_int is range SINT_MIN .. SINT_MAX;
   for signed_int'Size use INT_BIT;

   subtype bool_int is unsigned_int;
   --  ??? See bool_char

   bool_int_True  : constant bool_int := bool_int'Last;
   bool_int_False : constant bool_int := 0;

   ----------------------
   -- float components --
   ----------------------

   FLOAT_BIT   : constant := 32;
   FLOAT_DIGIT : constant := 6;
   FLOAT_MIN   : constant := -16#0.FFFF_FF#E+32;
   FLOAT_MAX   : constant := 16#0.FFFF_FF#E+32;

   type C_float is digits FLOAT_DIGIT range FLOAT_MIN .. FLOAT_MAX;
   for C_float'Size use FLOAT_BIT;
   --  Altivec operations always use the standard native floating-point
   --  support of the target. Note that this means that there may be
   --  minor differences in results between targets when the floating-
   --  point implementations are slightly different, as would happen
   --  with normal non-Altivec floating-point operations. In particular
   --  the Altivec simulations may yield slightly different results
   --  from those obtained on a true hardware Altivec target if the
   --  floating-point implementation is not 100% compatible.

   ----------------------
   -- pixel components --
   ----------------------

   subtype pixel is unsigned_short;

   -----------------------------------------------------------
   -- Subtypes for variants found in the GCC implementation --
   -----------------------------------------------------------

   subtype c_int is signed_int;
   subtype c_short is c_int;

   LONG_BIT  : constant := 32;
   --  Some of the GCC builtins are built with "long" arguments and
   --  expect SImode to come in.

   SLONG_MIN : constant := -2 ** (LONG_BIT - 1);
   SLONG_MAX : constant :=  2 ** (LONG_BIT - 1) - 1;
   ULONG_MAX : constant :=  2 ** LONG_BIT - 1;

   type signed_long   is range SLONG_MIN .. SLONG_MAX;
   type unsigned_long is mod ULONG_MAX + 1;

   subtype c_long is signed_long;

   subtype c_ptr is System.Address;

   ---------------------------------------------------------
   -- Access types, for the sake of some argument passing --
   ---------------------------------------------------------

   type signed_char_ptr    is access all signed_char;
   type unsigned_char_ptr  is access all unsigned_char;

   type short_ptr          is access all c_short;
   type signed_short_ptr   is access all signed_short;
   type unsigned_short_ptr is access all unsigned_short;

   type int_ptr            is access all c_int;
   type signed_int_ptr     is access all signed_int;
   type unsigned_int_ptr   is access all unsigned_int;

   type long_ptr           is access all c_long;
   type signed_long_ptr    is access all signed_long;
   type unsigned_long_ptr  is access all unsigned_long;

   type float_ptr          is access all Float;

   --

   type const_signed_char_ptr    is access constant signed_char;
   type const_unsigned_char_ptr  is access constant unsigned_char;

   type const_short_ptr          is access constant c_short;
   type const_signed_short_ptr   is access constant signed_short;
   type const_unsigned_short_ptr is access constant unsigned_short;

   type const_int_ptr            is access constant c_int;
   type const_signed_int_ptr     is access constant signed_int;
   type const_unsigned_int_ptr   is access constant unsigned_int;

   type const_long_ptr           is access constant c_long;
   type const_signed_long_ptr    is access constant signed_long;
   type const_unsigned_long_ptr  is access constant unsigned_long;

   type const_float_ptr          is access constant Float;

   --  Access to const volatile arguments need specialized types

   type volatile_float is new Float;
   pragma Volatile (volatile_float);

   type volatile_signed_char is new signed_char;
   pragma Volatile (volatile_signed_char);

   type volatile_unsigned_char is new unsigned_char;
   pragma Volatile (volatile_unsigned_char);

   type volatile_signed_short is new signed_short;
   pragma Volatile (volatile_signed_short);

   type volatile_unsigned_short is new unsigned_short;
   pragma Volatile (volatile_unsigned_short);

   type volatile_signed_int is new signed_int;
   pragma Volatile (volatile_signed_int);

   type volatile_unsigned_int is new unsigned_int;
   pragma Volatile (volatile_unsigned_int);

   type volatile_signed_long is new signed_long;
   pragma Volatile (volatile_signed_long);

   type volatile_unsigned_long is new unsigned_long;
   pragma Volatile (volatile_unsigned_long);

   type constv_char_ptr           is access constant volatile_signed_char;
   type constv_signed_char_ptr    is access constant volatile_signed_char;
   type constv_unsigned_char_ptr  is access constant volatile_unsigned_char;

   type constv_short_ptr          is access constant volatile_signed_short;
   type constv_signed_short_ptr   is access constant volatile_signed_short;
   type constv_unsigned_short_ptr is access constant volatile_unsigned_short;

   type constv_int_ptr            is access constant volatile_signed_int;
   type constv_signed_int_ptr     is access constant volatile_signed_int;
   type constv_unsigned_int_ptr   is access constant volatile_unsigned_int;

   type constv_long_ptr           is access constant volatile_signed_long;
   type constv_signed_long_ptr    is access constant volatile_signed_long;
   type constv_unsigned_long_ptr  is access constant volatile_unsigned_long;

   type constv_float_ptr  is access constant volatile_float;

private

   -----------------------
   -- Various constants --
   -----------------------

   CR6_EQ     : constant := 0;
   CR6_EQ_REV : constant := 1;
   CR6_LT     : constant := 2;
   CR6_LT_REV : constant := 3;

end GNAT.Altivec;