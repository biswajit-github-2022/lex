%{
#include<stdio.h>
int comments=0;
%}
%%
\/\/(.*) {comments++; }
\/\*.*\*\/  {comments++;}
%%
int main()
{
char s[10],d[10];
printf("Enter the source file and destination file \n");
scanf("%s%s",s,d);
yyin=fopen(s, "r"); /*open input file in read mode*/
yyout=fopen(d, "w"); /*open output file in write mode*/
yylex();
printf("Number of comments=%d\n", comments);
fclose(yyin);
fclose(yyout);
return 0;
}

\/\*.\\/|\/\*.[\n].\*\/