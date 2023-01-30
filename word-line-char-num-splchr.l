%{
	#include<stdio.h> 
	int line=0,word=0,letter=0,number=0,splchr=0; 
%}
%% 
"\n" 		{line++;word++;}
[\t' '] 	word++;
[a-zA-Z] 	letter++;
[0-9] 		number++;
. 		splchr++;
%%
int main()
{
printf("enter the input------\n");
yylex();
printf("Total lines=%d\n",line);
printf("Total words=%d\n",word-1);
printf("Total letters=%d\n",letter);
printf("Total numbers=%d\n",number);
printf("Total special character=%d\n",splchr);
return 0;
}
