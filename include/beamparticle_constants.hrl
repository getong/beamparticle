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

%% Key used within the process dictionary for tracing calls.
-define(CALL_TRACE_KEY, calltrace).
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
