%{ 

/*codigo colocado aqui aparece no arquivo gerado pelo flex*/ 

%} 

/* This tells flex to read only one input file */ 
%option noyywrap 

/* definicoes regulares */ 

delim		[ \t\n] 
ws		{delim}+ 






%% 

{ws}		{/*nenhuma acao e nenhum retorno*/} 

[a-zA-Z]+ {printf("Foi encontrado uma palavra. LEXEMA: %s\n", yytext);}

[+][0-9]+ {printf("Foi encontrado um numero inteiro positivo. LEXEMA: %s\n", yytext);}

[0-9]+ {printf("Foi encontrado um numero inteiro positivo. LEXEMA: %s\n", yytext);}

[-][0-9]+ {printf("Foi encontrado um numero inteiro negativo. LEXEMA: %s\n", yytext);}

[A-Z][A-Z][A-Z][-][0-9][0-9][0-9][0-9] {printf("Foi encontrado uma placa. LEXEMA: %s\n", yytext);}

[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9] {printf("Foi encontrado um telefone. LEXEMA: %s\n",yytext);}

[+|-]*[0-9]+[.][0-9]+ {printf("Foi encontrado um numero com parte decimal. LEXEMA: %s\n",yytext);}

[a-zA-Z]+" "[a-zA-Z]+" "[a-zA-Z]+[" "]*[a-zA-Z]* {printf("Foi encontrado um nome proprio. LEXEMA: %s\n",yytext);}

. {printf("Caracter nao reconhecido!\n");}
%% 

/*codigo em C. Foi criado o main, mas podem ser criadas outras funcoes aqui.*/ 

int main(void) 
{ 
    /* Call the lexer, then quit. */ 
    yylex(); 
    return 0; 
}
