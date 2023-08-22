%{
%}

%%
[0-9]+     
[-+]        { printf("Operator: %s\n", yytext); return yytext[0]; }
[*\/]      
.     
%%

int yywrap() {
}

int main() {
    int num1=10, num2=5, result;
    char operator;
    printf("Enter the operator (+, -, *, /): ");
    scanf(" %c", &operator);
    if (operator == '+' || operator == '-' || operator == '*' || operator == '/') {
        if (operator == '/' && num2 == 0) {
            printf("Division by zero is not allowed.\n");
        } else {
            switch (operator) {
                case '+': result = num1 + num2; break;
                case '-': result = num1 - num2; break;
                case '*': result = num1 * num2; break;
                case '/': result = num1 / num2; break;
            }
            printf("Result: %d %c %d = %d\n", num1, operator, num2, result);
        }
    } else {
        printf("Invalid operator.\n");
    }
    return 0;
}
