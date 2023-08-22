%{
%}
%%
[A-Z] {printf("\n%s capital letter",yytext);}
[a-z] {printf("\n %s not a capital letter",yytext);}
%%
int yywrap(void){}
int main(){
printf("enter : ");
yylex();
printf("\n");
return 0;
}
