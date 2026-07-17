%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%
"int"        { return INT; }
"main()"     { return MAIN; }
"begin"      { return BEG; }
"end"        { return END; }
"for"        { return FOR; }
"if"         { return IF; }
"endif"      { return ENDIF; }
"endfor"     { return ENDFOR; }
"do"         { return DO; }
"to"         { return TO; }
"return"     { return RETURN; }

">"|">="|"<"|"<="   { return RELOP; }
"="          { return EQ; }
";"          { return SC; }

[0-9]+       { yylval = atoi(yytext); return NUMBER; }
[a-zA-Z][a-zA-Z0-9_]* { return ID; }

[ \t]+       ;       
\n           { return NL; }

.            { return yytext[0]; }
%%
