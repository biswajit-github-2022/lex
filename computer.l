%{
#include<stdio.h>
int count=0;
%}
%%
(?i:computer) count++;
"\n" {printf("Number of computer word is : %d ",count);}
%%
int main(){
printf("Enter a Line --- ");
yylex();

return 0;

}