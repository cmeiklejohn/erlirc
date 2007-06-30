%%%-------------------------------------------------------------------
%% @copyright Geoff Cant
%% @author Geoff Cant <geoff@catalyst.net.nz>
%% @version {@vsn}, {@date} {@time}
%% @doc Shell #irc_cmd creation shortcut functions.
%% @end
%%%-------------------------------------------------------------------
-module(irc_cmd).

-include_lib("irc.hrl").

%% API
-export([]).
-compile(export_all).

%%====================================================================
%% API
%%====================================================================

join(Channel) ->
    #irc_cmd{name=join,args=[{channels, [Channel]}]}.

part(Channel) ->
    #irc_cmd{name=part,args=[{channels, [Channel]}]}.
part(Channel, Message) ->
    #irc_cmd{name=part,args=[{channels, [Channel]},
                             {message, Message}]}.

nick(Nick) ->
    #irc_cmd{name=nick,args=[{name, Nick}]}.

%%====================================================================
%% Internal functions
%%====================================================================
