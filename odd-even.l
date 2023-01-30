%{
	#include<stdio.h>
	int n;
%}
%%
[0-9]+	{n=atoi(yytext);
	if (n%2==0) printf("Even");
	else printf("odd");
	}
.*	{printf("not a number");}
%%
int main(){
printf("Enter a number : ");
yylex();
return 0;
}