-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2006 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

package body Semaphore is

  protected body Binary is

    entry Wait when Is_Signaled is
    begin
      Is_Signaled := False;
    end Wait;

    procedure Signal is
    begin
      Is_Signaled := True;
    end Signal;

  end Binary;

end Semaphore;

