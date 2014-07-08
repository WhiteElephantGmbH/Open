-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2008 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
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
