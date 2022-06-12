-module({{module}}).

-behavior(e2_task).

-export([start_link/0]).

-export([handle_task/1]).

%%%===================================================================
%%% Public API
%%%===================================================================

start_link() ->
    e2_task:start_link(?MODULE, []).

%%%===================================================================
%%% Service callbacks
%%%===================================================================

handle_task(State) ->
    e2_log:info("TODO: do some work~n"),
    {stop, normal, State}.

%%%===================================================================
%%% Internal functions
%%%===================================================================
