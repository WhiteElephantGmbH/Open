-- *********************************************************************************************************************
-- *                           (c) 2013 by White Elephant GmbH, Schaffhausen, Switzerland                              *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Exceptions;

package Exceptions is

  function Information_Of (Occurrence : Ada.Exceptions.Exception_Occurrence) return String;

end Exceptions;