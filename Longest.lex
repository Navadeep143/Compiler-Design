%{
#include <stdio.h>
int longest_length = 0;
int current_length = 0;
%}

%%
[a-zA-Z]+ {
    current_length = yyleng;
    if (current_length > longest_length) {
        longest_length = current_length;
    }
}
.|\n ; // Ignore other characters
%%

int main() {
    printf("Enter text:\n");
    yylex();
    printf("Longest word length: %d\n", longest_length);
    return 0;
}

int yywrap() {
    return 1;
}
