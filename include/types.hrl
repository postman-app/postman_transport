-record(email_rec, {
    from :: email_address()
    ,to :: list(email_address())
    ,bcc :: list(email_address())
    ,cc :: list(email_address())
    ,subject :: email_subject()
    ,body :: email_body()
    ,attachments :: email_attachments()
}).

-type email() :: #email_rec{}.
-type option() :: term().

%% TODO use more precise definitions here
-type email_address() :: string().
-type email_subject() :: string().
-type email_body() :: string().
-type email_attachments() :: term().
