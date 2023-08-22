%{
int fact=0,i=0;
%}
%%
"fact" fact++;
"i" i++;
%%
int yywrap(void){}
int main(){
printf("enter:");
yylex();
printf("fact:%d,""i:%d",fact,i);
return 0;
}
