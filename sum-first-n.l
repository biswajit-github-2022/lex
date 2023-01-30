%{
	#include<stdio.h> 
	int i; 
%} 
%% 
[0-9]+ {i=atoi(yytext); 
	printf("The sum of first %d number is:--- %d",i,(i*i+i)/2);} 

%% 
int main()
{
printf("enter the last number:----\n");
yylex(); 
return 0;
}