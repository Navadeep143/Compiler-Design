%{
int c=0;
%}
%%
" " c++;
%%
int yywrap(void){}
int main(){
printf("enter:");
yylex();
printf("no of words:%d",c+1);
return 0;
}
