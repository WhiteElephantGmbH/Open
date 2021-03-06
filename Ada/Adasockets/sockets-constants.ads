--  This package has been generated automatically on:
--  CYGWIN_NT-5.1 FALKHP2 1.3.2(0.39/3/2) 2001-05-20 23:28 i686 unknown
--  Generation date: Wed Aug 10 08:48:09  2005
--  Any change you make here is likely to be lost !
package Sockets.Constants is
   Tcp_Nodelay          : constant := 16#0001#;
   Af_Inet              : constant := 16#0002#;
   Af_Unix              : constant := 16#0001#;
   Sock_Stream          : constant := 16#0001#;
   Sock_Dgram           : constant := 16#0002#;
   Eintr                : constant := 16#2714#;
   Eagain               : constant := 16#000B#;
   Ewouldblock          : constant := 16#2733#;
   Einprogress          : constant := 16#2734#;
   Ealready             : constant := 16#2735#;
   Eisconn              : constant := 16#2748#;
   Econnrefused         : constant := 16#274D#;
   Fndelay              : constant := -1;
   Fasync               : constant := -2147195267;
   F_Getfl              : constant := -1;
   F_Setfl              : constant := -1;
   F_Setown             : constant := -1;
   So_Rcvbuf            : constant := 16#1002#;
   So_Reuseaddr         : constant := 16#0004#;
   So_Reuseport         : constant := -1;
   Sol_Socket           : constant := 16#FFFF#;
   Sigterm              : constant := 16#000F#;
   Sigkill              : constant := -1;
   O_Rdonly             : constant := 16#0000#;
   O_Wronly             : constant := 16#0001#;
   O_Rdwr               : constant := 16#0002#;
   Host_Not_Found       : constant := 16#2AF9#;
   Try_Again            : constant := 16#2AFA#;
   No_Recovery          : constant := 16#2AFB#;
   No_Data              : constant := 16#2AFC#;
   No_Address           : constant := 16#2AFC#;
   Pollin               : constant := 16#0001#;
   Pollpri              : constant := 16#0002#;
   Pollout              : constant := 16#0004#;
   Pollerr              : constant := -1;
   Pollhup              : constant := -1;
   Pollnval             : constant := -1;
   I_Setsig             : constant := -1;
   S_Rdnorm             : constant := -1;
   S_Wrnorm             : constant := -1;
   Ipproto_Ip           : constant := 16#0000#;
   Ip_Add_Membership    : constant := 16#0005#;
   Ip_Multicast_Loop    : constant := 16#0004#;
   Ip_Multicast_Ttl     : constant := 16#0003#;
   Ip_Drop_Membership   : constant := 16#0006#;
   O_Nonblock           : constant := -1;
   Msg_Peek             : constant := 16#0002#;
   Fionbio              : constant := -2147195266;
   Fionread             : constant := 16#4004667F#;
   So_Sndbuf            : constant := 16#1001#;
   Af_Inet6             : constant := -1;
   Ai_Addrconfig        : constant := -1;
   Ai_All               : constant := -1;
   Ai_Canonname         : constant := -1;
   Ai_Default           : constant := -1;
   Ai_Mask              : constant := -1;
   Ai_Numerichost       : constant := -1;
   Ai_Passive           : constant := -1;
   Ai_V4mapped          : constant := -1;
   Ai_V4mapped_Cfg      : constant := -1;
   Ni_Dgram             : constant := -1;
   Ni_Maxhost           : constant := -1;
   Ni_Maxserv           : constant := -1;
   Ni_Namereqd          : constant := -1;
   Ni_Nofqdn            : constant := -1;
   Ni_Numerichost       : constant := -1;
   Ni_Numericserv       : constant := -1;
   Ni_Withscopeid       : constant := -1;
   Ipproto_Ipv6         : constant := -1;
   Ipv6_Unicast_Hops    : constant := -1;
   Ipv6_Multicast_If    : constant := -1;
   Ipv6_Multicast_Hops  : constant := -1;
   Ipv6_Multicast_Loop  : constant := -1;
   Ipv6_Join_Group      : constant := -1;
   Ipv6_Leave_Group     : constant := -1;
end Sockets.Constants;
