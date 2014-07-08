-- *********************************************************************************************************************
-- *                       (c) 2008 .. 2009 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

package Windows.Pipe is

  Access_Denied    : exception; -- wrong access mode
  Bad_Pipe         : exception; -- invalid pipe state
  Broken           : exception; -- broken pipe
  Invalid_Name     : exception; -- incorrect pipe name
  More_Data        : exception; -- buffer too small
  Name_In_Use      : exception; -- open pipe with same same
  No_Data          : exception; -- no more data (server closed)
  No_Handle        : exception; -- pipe not opened
  No_Server        : exception; -- no server available
  Not_Server       : exception; -- no timeout for client open
  Timeout          : exception;
  Unknown_Error    : exception;
  Write_Incomplete : exception; -- write operation not completed

  type Role is (Client, Server);

  type Access_Mode is (Duplex, Inbound, Outbound);

  type Handle is private;

  type Get_Callback is access procedure (Item : String);

  Forever : constant Duration := 0.0;


  procedure Open (Pipe      : in out Handle;
                  Name      :        String;
                  Kind      :        Role;
                  Mode      :        Access_Mode;
                  Size      :        Natural;              -- maximum data buffer size
                  Wait_Time :        Duration := Forever;  -- only Forever allowed for client
                  Get_Call  :        Get_Callback := null);
  -- opens or reopens a pipe

  procedure Close (Pipe : in out Handle);
  -- no exceptions

  procedure Read (Pipe      :     Handle;
                  Data      :     System.Address;
                  Length    : out Natural;
                  Wait_Time :     Duration := Forever);

  procedure Write (Pipe   : Handle;
                   Data   : System.Address;
                   Length : Natural);

  procedure Put (Pipe : Handle;
                 Item : String);

private
  type Named_Pipe;
  type Handle is access Named_Pipe;
end Windows.Pipe;
