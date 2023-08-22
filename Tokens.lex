%{
%}
%%
[+-/\.*=!&] {printf("operator");}
"int"|"main"|"if"|"else"|"for"|"while"|"return"|"break"|"int"|"float" {printf("keyword");}
[0-9]+ {printf("constants");}
","|";"|"^" {printf("special character");}
["][a-zA-Z]+["] {printf("string");}
[a-zA-Z]+ {printf("identifier");}
%%
int yywrap(void){}
int main(){
printf("enter : ");
yylex();
printf("\n");
return 0;
}
