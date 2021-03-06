-define(RECONNS,3).
-define(RECONN_TIMEOUT,5000).
-define(DEFAULT_TIMEOUT,10000).
-define(DEFAULT_PORT,23).
-define(DEFAULT_Mod,unix_telnet).

-record(state,{teln_pid,
	       prx,
	       type,
	       buffer=[],
	       prompt=false,
	       name,
	       keep_alive=true,
	       extra,
	       target_mod=?DEFAULT_Mod,
	       conn_to=?DEFAULT_TIMEOUT, 
	       com_to=?DEFAULT_TIMEOUT, 
	       reconns=?RECONNS,
	       reconn_int=?RECONN_TIMEOUT}).
