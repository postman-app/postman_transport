-module(postman_transport).

-include("types.hrl").

%%====================================================================
%% Behaviour callbacks
%%====================================================================

%% sends an email with a certain list of options.
-callback send(Email :: email(), Options :: list(option())) -> ok | {error, Reason :: term()}.

%% returns a human readable string name of the transport.
-callback name() -> string().

%% returns a human readable string version of the transport (hopefully following semantic versioning).
-callback version() -> string().
