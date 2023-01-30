%{
#include <stdio.h> 
float r; 
#define pi 3.14159 
%} 
%% 
([0-9]*[.])?[0-9]* {r=atof(yytext); 
printf("area of circle is %.6f\n",pi*r*r);
}
.* {printf("WRONG not a number\n");} 
%%  
int main()
{
printf("enter the radius---\n");
yylex(); 
return 0;
}
