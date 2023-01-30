%{
#include<stdio.h> 
%} 
%% //delimeter
(?i:am)|(?i:is)|(?i:are) {printf("Auxilary verb\n");}
(?i:very)|(?i:simply) {printf("Adverb\n");}
(?i:to)|(?i:from)|(?i:behind) {printf("Preposition\n");}
(?i:if)|(?i:then)|(?i:and)|(?i:but) {printf("conjuction\n");}
(?i:i)|(?i:you)|(?i:he)|(?i:she) {printf("pronoun\n");}
[a-zA-z]+ {printf("noun\n");} 
%% 
int main()
{
printf("Enter the word------\n");
yylex(); 
return 0;
}
