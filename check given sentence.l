%{
#include<stdio.h>
int flag=0;
%}
%%
(""[nN][oO][rR]"")|(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[sS][oO]"")|(""[bB][uU][tT]"") { printf("The compound word used  is %s",yytext); flag=1;}
%%
int yywrap()
{
return 1;
}
int main()
{
	printf("Enter the sentence\n");
	yylex();
	if(flag==1) 
		printf("\nCompound sentence\n");
	else 
		printf("\nSimple sentence\n");
	return 0;
}
