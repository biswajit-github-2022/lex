%{
#include<stdio.h>
int printf_c=0,scanf_c=0;
%}
%%
"printf" {printf_c++; }
"scanf" {scanf_c++;}
. {}
%%
int main()
{
char s[20];
printf("Enter the source file \n");
scanf("%s",s);
yyin=fopen(s, "r"); /*open input file in read mode*/
yylex();
printf("Number of printf statements=%d\n", printf_c);
printf("Number of scanf statements=%d\n", scanf_c);
fclose(yyin);
return 0;
}
