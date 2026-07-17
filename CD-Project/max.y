%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
extern FILE *yyin;

int arr[100], n = 0, max;
%}

%token INT MAIN BEG END FOR IF ENDIF ENDFOR DO TO RETURN
%token RELOP EQ SC NUMBER ID NL

%%

program:
    INT MAIN NL BEG NL decl NL assign NL loop NL END
    {
        printf("Valid Code\n");
        printf("Maximum value = %d\n", max);
        exit(0);  
    }
;

decl:
    INT ID '[' NUMBER ']' SC
    {
        n = $4;
        printf("Enter %d elements:\n", n);
        for(int i=0;i<n;i++)
            scanf("%d",&arr[i]);
    }
;

assign:
    INT ID EQ ID '[' NUMBER ']' SC
    {
        max = arr[$6];
    }
;

loop:
    FOR ID EQ NUMBER TO ID '-' NUMBER DO NL
    IF ID '[' ID ']' RELOP ID NL
    ID EQ ID '[' ID ']' SC NL
    ENDIF NL ENDFOR
    {
        for(int i=1;i<n;i++){
            if(arr[i] > max)
                max = arr[i];
        }
    }
;

%%

int yywrap(){
    return 1;
}

void yyerror(const char *s){
    printf("Invalid Code\n");
    exit(0);
}

int main(int argc,char *argv[]){
    if(argc!=2){
        printf("Usage: ./a.out input.txt\n");
        exit(0);
    }

    yyin=fopen(argv[1],"r");
    yyparse();
    return 0;
}
