%%%
%%% %CopyrightBegin%
%%%
%%% Copyright Neeraj Sharma <neeraj.sharma@alumni.iitg.ernet.in> 2017.
%%% All Rights Reserved.
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%% %CopyrightEnd%
%%%

-define(APPLICATION_NAME, beamparticle).
-define(DEFAULT_HTTP_PORT, 8282).
-define(DEFAULT_HIGHPERF_HTTP_PORT, 8484).

-define(DEFAULT_HIGHPERF_DATETIME_TIMEOUT_MSEC, 2000).

-define(DEFAULT_HTTP_IS_SSL_ENABLED, true).
-define(DEFAULT_MAX_HTTP_KEEPALIVES, 100).
-define(DEFAULT_HTTP_NR_LISTENERS, 1000).
-define(DEFAULT_HTTP_BACKLOG, 1024).
-define(DEFAULT_HTTP_MAX_CONNECTIONS, 50000).

-define(DEFAULT_MAX_HTTP_READ_TIMEOUT_MSEC, 1000).
-define(DEFAULT_MAX_HTTP_READ_BYTES, 12 * 1024 * 1024).


-define(STORE_MODULE, leveldbstore_proc).

-define(KSTORE_EXPIRY_TYPE, 0).

%% default interval in milli-seconds for mark and sweep of expired
%% entries in the key value store.
-define(DEFAULT_KEYEXPIRY_COLLECTOR_TIMEOUT_MSEC, 30 * 60 * 1000).

-define(MAX_KEY_DELETES_PER_MARK_AND_SWEEP, 5000).

%% see https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
-define(HTTP_REQUEST_TIMEOUT_CODE, 408).
-define(HTTP_METHOD_NOT_ALLOWED_CODE, 405).

%% Key used within the process dictionary for tracing calls.
-define(CALL_TRACE_ENV_KEY, calltrace).
-define(CALL_TRACE_BASE_TIME, calltracebasetime).

%% Cache settings
%% The cache name beamparticle_cache must be present in sys.config
-define(CACHE_NAME, beamparticle_cache).
-define(DEFAULT_CACHE_MEMORY_BYTES, 64*1024*1024).  %% 64 MB
%% accuracy of 1.2 hours = 24 / 20
-define(DEFAULT_CACHE_SEGMENTS, 20).
-define(DEFAULT_CACHE_TTL_SEC, 24 * 60 * 60).  %% 24 hours


%% Millisecond interval after which cluster peers which
%% are reconnected when down.
-define(DEFAULT_CLUSTER_MONITOR_RECONNECT_MSEC, 60000).

-define(OPENTRACE_PDICT_NAME, opentrace_name).
-define(OPENTRACE_PDICT_CONFIG, opentrace_config).

%% default timeout in millisecond for global KV table
-define(DEFAULT_MEMSTORE_TABLE_TIMEOUT_MSEC, 5000).

-define(PYTHON_SERVER_EXEC_PATH, "pynode/bin/pynode").
%% cannot run more than 5 python nodes
-define(MAXIMUM_PYNODE_SERVER_ID, 10000).
%% maximum number of sub-workers or threads within
%% the python node
-define(MAXIMUM_PYNODE_WORKERS, 10).
-define(PYNODE_POOL_NAME, pynode_pool).

%% mailbox (or process name) used within python node
-define(PYNODE_MAILBOX_NAME, pythonserver).
-define(PYNODE_DEFAULT_STARTUP_TIME_MSEC, 1000).

-define(JAVA_SERVER_EXEC_PATH, "javanode/bin/javanode").
%% cannot run more than 5 java nodes
-define(MAXIMUM_JAVANODE_SERVER_ID, 10000).
-define(JAVANODE_POOL_NAME, javanode_pool).

%% mailbox (or process name) used within java node
-define(JAVANODE_MAILBOX_NAME, javaserver).
-define(JAVANODE_DEFAULT_STARTUP_TIME_MSEC, 100).


%% constants for git backend
-define(GIT_BACKEND_DEFAULT_COMMAND_TIMEOUT_MSEC, 2000).
-define(GIT_BINARY, "/usr/bin/git").

%% key used in process dictionary to define running environment
%% possible values are prod and stage.
-define(CALL_ENV_KEY, callenvkey).

%% key used in process dictionary to define last invoked
%% function configuration as an Erlang map. Notice that
%% The latest dynamic function which has non undefined
%% configuration overwrites the previous value.
-define(CALL_ENV_CONFIG, callenvconfig).

% read from config, database or some other secure store
-define(DEFAULT_JWT_ALGORITHM, <<"HS256">>).
-define(DEFAULT_JWT_KEY, <<"Wha21#!@##Akey1!@@242">>).
-define(DEFAULT_JWT_ISS, <<"beamparticle">>).
-define(DEFAULT_JWT_EXPIRY_SECONDS, 2 * 60 * 60).

%% key used in process dictionary to determine the user
%% who is running the function call
-define(USERINFO_ENV_KEY, userinfo).
-define(DIALOGUE_ENV_KEY, dialogue).

%% key used in process dictionary to store dynamic function
%% logs for python and java programming languages for
%% easier debugging (when required).
-define(LOG_ENV_KEY, loginfo).
%% limit the maximum number of log events for dynamic function
%% to keep the memory bounded
-define(MAX_LOG_EVENTS, 1000).


-define(DEFAULT_IDE_TERMINAL_WELCOME_1,
        <<"\r
    ____                                     \r
   / __ ) ___   ____ _ ____ ___              \r
  / __  |/ _ \ / __ `// __ `__ \             \r
 / /_/ //  __// /_/ // / / / / /             \r
/_____/ \___/ \__,_//_/ /_/ /_/              \r
    ____                __   _        __     \r
   / __ \ ____ _ _____ / /_ (_)_____ / /___  \r
  / /_/ // __ `// ___// __// // ___// // _ \ \r
 / ____// /_/ // /   / /_ / // /__ / //  __/ \r
/_/     \__,_//_/    \__//_/ \___//_/ \___/  \r
                                             \r
\r
 - BEAM will carry you at the speed of light.\r
\r
">>).
-define(DEFAULT_IDE_TERMINAL_WELCOME,
        <<"\r
 +-++-++-++-+             \r
 |B||e||a||m|             \r
 +-++-++-++-+             \r
 +-++-++-++-++-++-++-++-+ \r
 |P||a||r||t||i||c||l||e| \r
 +-++-++-++-++-++-++-++-+ \r
                          \r
\r
 - BEAM will carry you at the speed of light.\r
\r
">>).

-define(DEFAULT_IDE_TERMINAL_WELCOME_SHORT, <<"\r
 - BEAM will carry you at the speed of light.\r
\r
">>).
-define(DEFAULT_IDE_TERMINAL_PROMPT, <<"$ ">>).

-ifdef('FUN_STACKTRACE').
-define(CAPTURE_STACKTRACE, ).
-define(GET_STACKTRACE, erlang:get_stacktrace()).
-else.
-define(CAPTURE_STACKTRACE, :__StackTrace).
-define(GET_STACKTRACE, __StackTrace).
-endif.

