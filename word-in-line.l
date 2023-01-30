%{
	#include<stdio.h>
	#include<string.h> 
	int i=0;
%} 
%% 
[a-zA-Z0-9]* 	{i++;}
"\n" 		{ printf("The number of words is %d",i); } 
%% 
int main()
{
printf("enter the line:----\n");
yylex(); 
return 0;
}