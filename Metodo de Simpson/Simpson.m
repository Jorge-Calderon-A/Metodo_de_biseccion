%Simpson
syms x
format long
func= 160*(x/(x+4))*exp(-x/8);
a=0;
b=24;
n=10;   %EL INTERVALO DEBE SER SIEMPRE PAR 

X=a; h = (b - a)/n; s=0;
for i = 1 : n
Xold=X;
X = X + h;
s = s+(h/6)*((subs(func,x,Xold))+4*(subs(func,x,(Xold+X)/2))+(subs(func,x,X))) ;
end
%valor aproximacion metodo numerico
F = vpa(s)
%valor aproximacion matlab
I=double(int(func,x,a,b))
%error de la aproximacion
E=double(abs(I-F))
