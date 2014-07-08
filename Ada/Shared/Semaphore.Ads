-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2006 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

package Semaphore is

  protected type Binary is
    entry Wait;
    procedure Signal;
  private
    Is_Signaled : Boolean := False;
  end Binary;

end Semaphore;
