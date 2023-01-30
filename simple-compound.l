%{
#include<stdio.h> 
int a=0;
%}
%%
"and"|"or"|"but"|"because"|"yet" {printf(" COMPOUND SENTENCE ");
					a++;}
[a-zA-Z]+ {printf("");}
%%
int main()
{
printf("\n Enter the Sentence:");
yylex();
if (a==0){printf(" SIMPLE SENTENCE ");}
return 0;
}