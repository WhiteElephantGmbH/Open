-- *********************************************************************************************************************
-- *                       (c) 2008 .. 2011 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Unchecked_Deallocation;
with Log;
with Win32.Winerror;
with Win32.Winbase;
with Win32.Winnt;
with Semaphore;

package body Windows.Pipe is

  type Item_Access is access String;

  type Named_Pipe (Name_Length : Positive;
                   Kind        : Role) is
  record
    Name       : String (1 .. Name_Length);
    Connection : Win32.Winnt.HANDLE := Win32.Winbase.INVALID_HANDLE_VALUE;
    Timeout    : Win32.DWORD;
    Item       : Item_Access;
    Mode       : Access_Mode;
    Size       : Win32.DWORD;
    case Kind is
    when Server =>
      Connect_Overlapped : aliased Win32.Winbase.OVERLAPPED;
      Write_Overlapped   : aliased Win32.Winbase.OVERLAPPED;
      Read_Overlapped    : aliased Win32.Winbase.OVERLAPPED;
      Item_Event         : aliased Win32.Winnt.HANDLE;
      Item_Taken         : Semaphore.Binary;
      Get_Call           : Get_Callback;
    when Client =>
      null;
    end case;
  end record;


  procedure Dispose is new Ada.Unchecked_Deallocation (String, Item_Access);

  procedure Handle_Error (Error : Win32.DWORD) is
    use type Win32.DWORD;
  begin
    case Error is
    when Win32.Winerror.ERROR_ACCESS_DENIED =>
      raise Access_Denied;
    when Win32.Winerror.ERROR_BROKEN_PIPE =>
      raise Broken;
    when Win32.Winerror.ERROR_FILE_NOT_FOUND =>
      raise No_Server;
    when Win32.Winerror.ERROR_INVALID_NAME =>
      raise Invalid_Name;
    when Win32.Winerror.ERROR_MORE_DATA =>
      raise More_Data;
    when Win32.Winerror.ERROR_NO_DATA =>
      raise No_Data;
    when Win32.Winerror.ERROR_PIPE_BUSY =>
      raise Name_In_Use;
    when Win32.Winerror.ERROR_BAD_PIPE =>
      raise Bad_Pipe;
    when Win32.Winerror.ERROR_PIPE_NOT_CONNECTED =>
      raise No_Server;
    when others =>
      if Error = 0 then
        Log.Write ("Windows.Pipe - No Error");
        raise Broken;
      end if;
      Log.Write ("Windows.Pipe - Unknown_Error:" & Win32.DWORD'image(Error));
      raise Unknown_Error;
    end case;
  end Handle_Error;


  procedure Check (Pipe : Handle) is
    use type Win32.BOOL;
  begin
    if Pipe = null then
      raise No_Handle;
    end if;
  end Check;


  procedure Check (Result : Win32.BOOL;
                   Pipe   : Handle) is
    use type Win32.BOOL;
  begin
    if Result /= Win32.TRUE then
      if Pipe.Kind = Server then
        Pipe.Item_Taken.Signal;
      end if;
      Handle_Error (Win32.Winbase.GetLastError);
    end if;
  end Check;


  function Pipe_Name_Of (Pipe : Handle) return String is
  begin
    return "\\.\pipe\" & Pipe.Name;
  end Pipe_Name_Of;


  procedure Create_Client_Connection (Pipe : Handle) is

    function Desired_Access return Win32.DWORD is
    begin
      case Pipe.Mode is
      when Duplex =>
        return Win32.DWORD(Win32.Winnt.GENERIC_READ + Win32.Winnt.GENERIC_WRITE);
      when Inbound =>
        return Win32.DWORD(Win32.Winnt.GENERIC_WRITE);
      when Outbound =>
        return Win32.DWORD(Win32.Winnt.GENERIC_READ + Win32.Winnt.FILE_WRITE_ATTRIBUTES);
      end case;
    end Desired_Access;

    Share_Mode : constant Win32.DWORD := Win32.DWORD(Win32.Winnt.FILE_SHARE_READ +
                                                     Win32.Winnt.FILE_SHARE_WRITE);
    Pipe_Mode  : aliased Win32.DWORD;

    use type System.Address;

    Pipe_Name : aliased constant String := Pipe_Name_Of (Pipe) & Ascii.Nul;

  begin
    Pipe.Connection := Win32.Winbase.CreateFile
                         (lpFileName            => Win32.Addr (Pipe_Name),
                          dwDesiredAccess       => Desired_Access,
                          dwShareMode           => Share_Mode,
                          lpSecurityAttributes  => null,
                          dwCreationDisposition => Win32.Winbase.OPEN_EXISTING,
                          dwFlagsAndAttributes  => 0,
                          hTemplateFile         => System.Null_Address);
    if Pipe.Connection = Win32.Winbase.INVALID_HANDLE_VALUE then
      Handle_Error (Win32.Winbase.GetLastError);
    end if;

    Pipe_Mode := Win32.DWORD(Win32.Winbase.PIPE_READMODE_MESSAGE + Win32.Winbase.PIPE_WAIT);
    Check (Win32.Winbase.SetNamedPipeHandleState
             (hNamedPipe           => Pipe.Connection,
              lpMode               => Pipe_Mode'unchecked_access,
              lpMaxCollectionCount => null,
              lpCollectDataTimeout => null), Pipe);
  end Create_Client_Connection;


  procedure Create_Server_Connection (Pipe : Handle) is

    function Pipe_Access_Mode return Win32.DWORD is
    begin
      case Pipe.Mode is
      when Duplex =>
        return Win32.DWORD(Win32.Winbase.PIPE_ACCESS_DUPLEX + Win32.Winbase.FILE_FLAG_OVERLAPPED);
      when Inbound =>
        return Win32.DWORD(Win32.Winbase.PIPE_ACCESS_INBOUND + Win32.Winbase.FILE_FLAG_OVERLAPPED);
      when Outbound =>
        return Win32.DWORD(Win32.Winbase.PIPE_ACCESS_OUTBOUND + Win32.Winbase.FILE_FLAG_OVERLAPPED);
      end case;
    end Pipe_Access_Mode;

    Pipe_Mode : aliased Win32.DWORD;

    use type System.Address;

    Pipe_Name : aliased constant String := Pipe_Name_Of (Pipe) & Ascii.Nul;

  begin
    Pipe_Mode := Win32.DWORD(Win32.Winbase.PIPE_TYPE_MESSAGE +
                             Win32.Winbase.PIPE_READMODE_MESSAGE +
                             Win32.Winbase.PIPE_WAIT);

    Pipe.Connection := Win32.Winbase.CreateNamedPipe
                         (lpName               => Win32.Addr (Pipe_Name),
                          dwOpenMode           => Pipe_Access_Mode,
                          dwPipeMode           => Pipe_Mode,
                          nMaxInstances        => Win32.DWORD(1),
                          nOutBufferSize       => Pipe.Size,
                          nInBufferSize        => Pipe.Size,
                          nDefaultTimeOut      => 0,
                          lpSecurityAttributes => null);

    if Pipe.Connection = Win32.Winbase.INVALID_HANDLE_VALUE then
      Pipe.Item_Taken.Signal;
      Handle_Error (Win32.Winbase.GetLastError);
    end if;
  end Create_Server_Connection;


  procedure Connect (Pipe : Handle) is
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Win32.Winbase.ConnectNamedPipe
             (hNamedPipe   => Pipe.Connection,
              lpOverlapped => Pipe.Connect_Overlapped'unchecked_access) /= Win32.TRUE
    then
      declare
        Error : constant Win32.DWORD := Win32.Winbase.GetLastError;
      begin
        if Error = Win32.Winerror.ERROR_IO_PENDING then
          case Win32.Winbase.WaitForSingleObject
                 (hHandle        => Pipe.Connect_Overlapped.hEvent,
                  dwMilliseconds => Pipe.Timeout) is
          when Win32.Winbase.WAIT_TIMEOUT =>
            raise Timeout;
          when Win32.Winbase.WAIT_OBJECT_0 =>
            null;
          when others =>
            Pipe.Item_Taken.Signal;
            Handle_Error (Error);
          end case;
        else
          Pipe.Item_Taken.Signal;
          Handle_Error (Error);
        end if;
      end;
    end if;
  end Connect;


  procedure Set_Timeout_For (Pipe      : Handle;
                             Wait_Time : Duration) is
  begin
    if Wait_Time = Forever then
      Pipe.Timeout := Win32.Winbase.NMPWAIT_WAIT_FOREVER;
    else
      Pipe.Timeout := Win32.DWORD(Float(Wait_Time) * 1000.0);
    end if;
  end Set_Timeout_For;


  ------------------
  -- Specification
  ------------------

  procedure Open (Pipe      : in out Handle;
                  Name      :        String;
                  Kind      :        Role;
                  Mode      :        Access_Mode;
                  Size      :        Natural;
                  Wait_Time :        Duration := Forever;
                  Get_Call  :        Get_Callback := null) is
  begin
    if Kind = Client then
      if (Wait_Time /= Forever) or (Get_Call /= null) then
        raise Not_Server;
      end if;
    end if;
    Close (Pipe);
    Pipe := new Named_Pipe (Name'length, Kind);
    Pipe.Mode := Mode;
    Pipe.Name := Name;
    Pipe.Size := Win32.DWORD(Size);
    if Pipe.Kind = Server then
      Pipe.Get_Call := Get_Call;
      Set_Timeout_For (Pipe, Wait_Time);
      Pipe.Connect_Overlapped.hEvent := Win32.Winbase.CreateEvent
                                          (lpEventAttributes => null,
                                           bManualReset      => Win32.TRUE,
                                           bInitialState     => Win32.TRUE,
                                           lpName            => null);
      Pipe.Write_Overlapped.hEvent := Win32.Winbase.CreateEvent
                                        (lpEventAttributes => null,
                                         bManualReset      => Win32.TRUE,
                                         bInitialState     => Win32.TRUE,
                                         lpName            => null);
      Pipe.Read_Overlapped.hEvent := Win32.Winbase.CreateEvent
                                       (lpEventAttributes => null,
                                        bManualReset      => Win32.TRUE,
                                        bInitialState     => Win32.TRUE,
                                        lpName            => null);
      Pipe.Item_Event := Win32.Winbase.CreateEvent
                           (lpEventAttributes => null,
                            bManualReset      => Win32.FALSE,
                            bInitialState     => Win32.FALSE,
                            lpName            => null);
      Create_Server_Connection (Pipe);
      Connect (Pipe);
    else
      Create_Client_Connection (Pipe);
    end if;
  exception
  when others =>
    Close (Pipe);
    raise;
  end Open;


  procedure Close (Pipe : in out Handle) is
    use type System.Address;
    procedure Dispose is new Ada.Unchecked_Deallocation (Named_Pipe, Handle);
    Dummy : Win32.BOOL;
  begin
    if Pipe /= null then
      begin
        if Pipe.Item /= null then
          Dispose (Pipe.Item);
        end if;
        Dummy := Win32.Winbase.DisconnectNamedPipe (Pipe.Connection);
        if Pipe.Kind = Server then
          Dummy := Win32.Winbase.CloseHandle(hObject => Pipe.Connect_Overlapped.hEvent);
          Dummy := Win32.Winbase.CloseHandle(hObject => Pipe.Read_Overlapped.hEvent);
          Dummy := Win32.Winbase.CloseHandle(hObject => Pipe.Write_Overlapped.hEvent);
          Dummy := Win32.Winbase.CloseHandle(hObject => Pipe.Item_Event);
        end if;
        if Pipe.Connection /= Win32.Winbase.INVALID_HANDLE_VALUE then
          Dummy := Win32.Winbase.CloseHandle(hObject => Pipe.Connection);
        end if;
      exception
      when others =>
        null;
      end;
      Dispose (Pipe);
    end if;
  end Close;


  procedure Read (Pipe      :     Handle;
                  Data      :     System.Address;
                  Length    : out Natural;
                  Wait_Time :     Duration := Forever) is

    Count : aliased Win32.DWORD;

    use type Win32.BOOL;

  begin
    Check (Pipe);
    if Pipe.Kind = Client then
      if Wait_Time /= Forever then
        raise Not_Server;
      end if;
      if Win32.Winbase.ReadFile
          (hFile                => Pipe.Connection,
           lpBuffer             => Data,
           nNumberOfBytesToRead => Pipe.Size,
           lpNumberOfBytesRead  => Count'unchecked_access,
           lpOverlapped         => null) /= Win32.TRUE
      then
        Handle_Error (Win32.Winbase.GetLastError);
      end if;
    else
      declare
        use type Win32.DWORD;

        type Handles is array (0..1) of aliased Win32.Winnt.HANDLE;

        Event_Handles : Handles := (Pipe.Read_Overlapped.hEvent, Pipe.Item_Event);
      begin
        Set_Timeout_For (Pipe, Wait_Time);
        if Win32.Winbase.ReadFile
            (hFile                => Pipe.Connection,
             lpBuffer             => Data,
             nNumberOfBytesToRead => Pipe.Size,
             lpNumberOfBytesRead  => Count'unchecked_access,
             lpOverlapped         => Pipe.Read_Overlapped'unchecked_access) /= Win32.TRUE
        then
          declare
            Error : constant Win32.DWORD := Win32.Winbase.GetLastError;
          begin
            if Error = Win32.Winerror.ERROR_IO_PENDING then
              loop
                case Win32.Winbase.WaitForMultipleObjects
                       (nCount         => Event_Handles'length,
                        lpHandles      => Event_Handles(Event_Handles'first)'unchecked_access,
                        bWaitAll       => Win32.FALSE,
                        dwMilliseconds => Pipe.Timeout) is
                when Win32.Winbase.WAIT_TIMEOUT =>
                  raise Timeout;
                when Win32.Winbase.WAIT_OBJECT_0 =>
                  Check (Win32.Winbase.GetOverlappedResult
                           (hFile                      => Pipe.Connection,
                            lpOverlapped               => Pipe.Read_Overlapped'unchecked_access,
                            lpNumberOfBytesTransferred => Count'unchecked_access,
                            bWait                      => Win32.FALSE), Pipe);
                  exit;
                when Win32.Winbase.WAIT_OBJECT_0 + 1 =>
                  Pipe.Get_Call (Pipe.Item.all);
                  Dispose (Pipe.Item);
                  Pipe.Item_Taken.Signal;
                when others =>
                  Pipe.Item_Taken.Signal;
                  Handle_Error (Error);
                end case;
              end loop;
            else
              Pipe.Item_Taken.Signal;
              Handle_Error (Error);
            end if;
          end;
        end if;
      end;
    end if;
    Length := Natural(Count);
  end Read;


  procedure Write (Pipe   : Handle;
                   Data   : System.Address;
                   Length : Natural) is

    Count : aliased Win32.DWORD;

    use type Win32.BOOL;
    use type Win32.DWORD;

  begin
    Check (Pipe);
    if Pipe.Kind = Client then
      if Win32.Winbase.WriteFile (hFile                  => Pipe.Connection,
                                  lpBuffer               => Data,
                                  nNumberOfBytesToWrite  => Win32.DWORD(Length),
                                  lpNumberOfBytesWritten => Count'unchecked_access,
                                  lpOverlapped           => null) /= Win32.TRUE
      then
        Handle_Error (Win32.Winbase.GetLastError);
      end if;
    else
      if Win32.Winbase.WriteFile
           (hFile                  => Pipe.Connection,
            lpBuffer               => Data,
            nNumberOfBytesToWrite  => Win32.DWORD(Length),
            lpNumberOfBytesWritten => Count'unchecked_access,
            lpOverlapped           => Pipe.Write_Overlapped'unchecked_access) /= Win32.TRUE
      then
        declare
          Error : constant Win32.DWORD := Win32.Winbase.GetLastError;
        begin
          if Win32.Winbase.GetLastError = Win32.Winerror.ERROR_IO_PENDING then
            case Win32.Winbase.WaitForSingleObject
                   (hHandle        => Pipe.Write_Overlapped.hEvent,
                    dwMilliseconds => Win32.Winbase.NMPWAIT_WAIT_FOREVER) is
            when Win32.Winbase.WAIT_TIMEOUT =>
              raise Timeout;
            when Win32.Winbase.WAIT_OBJECT_0 =>
              Check (Win32.Winbase.GetOverlappedResult
                       (hFile                      => Pipe.Connection,
                        lpOverlapped               => Pipe.Write_Overlapped'unchecked_access,
                        lpNumberOfBytesTransferred => Count'unchecked_access,
                        bWait                      => Win32.FALSE), Pipe);
            when others =>
              Pipe.Item_Taken.Signal;
              Handle_Error (Error);
            end case;
          else
            Pipe.Item_Taken.Signal;
            Handle_Error (Error);
          end if;
        end;
      end if;
    end if;
    if Count /= Win32.DWORD(Length) then
      raise Write_Incomplete;
    end if;
  end Write;


  procedure Put (Pipe : Handle;
                 Item : String) is
  begin
    Check (Pipe);
    if Pipe.Get_Call = null then
      raise Program_Error;
    end if;
    Pipe.Item := new String'(Item);
    Check (Win32.Winbase.SetEvent (Pipe.Item_Event), Pipe);
    Pipe.Item_Taken.Wait;
  end Put;

end Windows.Pipe;
