%{
	#include <stdio.h> 
	int op=0; 
	float a,b;
	void digi();
%}
%% 
[0-9]+|([0-9]*)"."([0-9]+) {digi();} 
"+" {op=1;}
"\n" {printf("\n The Answer :%f\n",a);
	a=0;} 
%%
void digi() {
	if(op==0)
		a=atof(yytext); 
	else{
		b=atof(yytext);
		a=a+b; 
	}
}
int main()
{
printf("enter numbers(a+b+...)---\n ");
yylex();
return 0;
}
