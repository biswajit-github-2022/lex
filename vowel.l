%{
	#include<stdio.h>
	int v=0,c=0; 
%} 
%% 
[aeiouAEIOU]? v++; 
[a-zA-z] {c++;} 
[\n] return 0; 
%% 
int main()
{
printf("Enter the string of vowels:\n ");
yylex(); 
printf("Number of vowels are: %d\n",v); 
printf("Number of vconsonents are: %d\n",c); 
return 0;
} 