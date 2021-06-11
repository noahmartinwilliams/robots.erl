Definitions.

Rules.

Allow	: {token, {'allow', TokenLine}}.
User-agent	: {token, {'useragent', TokenLine}}.
Disallow	: {token, {'disallow', TokenLine}}.
\:	: {token, {':', TokenLine}}.
#\s</pre>	: skip_token. %% For some reason the regex that comes after this one doesn't catch this comment from the last line of Wikipedia's robots.txt.
#(.|ö|ï|»|¿)*\n	: skip_token.
[\s\t\r\n]+	: skip_token.
/(.|ï|ö|»|¿)*\n	: {token, {'url', TokenLine, TokenChars}}.
[ïö»¿]+	: skip_token. %% For some reason Wikipedia's robots.txt opens with this according to the lexer.
[-a-zA-Z0-9.*]+	: {token, {'identifier', TokenLine, TokenChars}}.

Erlang code.