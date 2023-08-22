%{
%}
%%
[if|else|switch|break|continue|else if|for|while|int|main|float] {printf("\nkeyword\n");}
.+[a-zA-Z0-9]+ {printf("\nidentifier\n");}
%%
int yywrap(void){}
int main()
{
printf("\nenter : ");
yylex();
printf("\n");
return 0;
}
