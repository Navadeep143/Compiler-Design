%{
%}
%%
[a-z A-Z][a-z A-Z 0-9]+ {printf("\nvalid identifier\n");}
.+ {printf("\nnot an identifier\n");}
%%
int yywrap(void){}
int main()
{
printf("\n enter identifier");
yylex();
printf("\n");
return 0;
}
