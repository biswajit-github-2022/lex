%{
	#include<stdio.h> 
	int n,i,f=1; 
%} 
%% 
[0-9]+ {n=atoi(yytext); 
	for(i=1;i<=n;i++)
	{
	f=f*i;
	}
	printf("The factorial is -- %d",f);
	f=1;
	} 
.* 	printf("wrong number"); 
%% 
int main()
{
printf("enter the number:----\n");
yylex();
return 0;
}