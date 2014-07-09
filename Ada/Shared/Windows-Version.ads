-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *                                                                                                                   *
-- *    This program is free software; you can redistribute it and/or modify it under the terms of the GNU General     *
-- *    Public License as published by the Free Software Foundation; either version 2 of the License, or               *
-- *    (at your option) any later version.                                                                            *
-- *                                                                                                                   *
-- *    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the     *
-- *    implied warranty of MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE. See the GNU General Public License    *
-- *    for more details.                                                                                              *
-- *                                                                                                                   *
-- *    You should have received a copy of the GNU General Public License along with this program; if not, write to    *
-- *    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Unsigned;

package Windows.Version is

  No_Version_Info : exception;

  procedure Set_Language_Id (The_Id : Unsigned.Longword);
  -- Defaults to 16#040904E4#; -- US English, Multilingual codepage

  function Product_Name return String;

  function Product_Version return String;

  function Legal_Copyright return String;

  function Product_License return String;

  function Product_Version return Unsigned.Quadword;

  function File_Version return Unsigned.Quadword;

end Windows.Version;
