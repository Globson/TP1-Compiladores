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

[0-9][0-9][0-9][.][0-9][0-9][0-9][.][0-9][0-9][0-9][-][0-9][0-9] {printf("Foi encontrado um CPF. LEXEMA: %s\n", yytext);}

[0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z] {printf("Foi encontrado uma placa no padrao mercosul. LEXEMA: %s\n", yytext);}

[0-9][0-9][.][0-9][0-9][0-9][.][0-9][0-9][0-9][/][0-9][0-9][0-9][0-9][-][0-9][0-9] {printf("Foi encontrado um CNPJ. LEXEMA: %s\n", yytext);}

[9][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9] {printf("Foi encontrado um telefone com 9. LEXEMA: %s\n",yytext);}

[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9] {printf("Foi encontrado um telefone sem o 9. LEXEMA: %s\n",yytext);}

[A-Z]+[-][0-9]+[.][0-9]+[.][0-9]+ {printf("Foi encontrado um RG. LEXEMA: %s\n",yytext);}

[0-9a-zA-Z.]+[@][0-9a-zA-Z]+[.a-zA-Z]+ {printf("Foi encontrado um email. LEXEMA: %s\n",yytext);}

[0-2][0-9][:][0-6][0-9] {printf("Foi encontrado um horario. LEXEMA: %s\n",yytext);}

. {printf("Caracter nao reconhecido!\n");}
%% 

/*codigo em C. Foi criado o main, mas podem ser criadas outras funcoes aqui.*/ 

int main(void) 
{ 
    /* Call the lexer, then quit. */ 
    yylex(); 
    return 0; 
}
