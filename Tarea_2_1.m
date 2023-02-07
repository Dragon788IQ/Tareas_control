%Tarea no.2 Usando matematica simbolica para linealizar
clc
clear
clear all
syms x1 w1 w2 %Variables que afectan a x
syms V ro x x10 w10 w20 x2
 
f1 = ((w1/(V*ro))*(x1-x))+((w2/(V*ro))*(x2-x));

lf1 = taylor(f1, [x1 w1 w2],[x10 w10 w20],"order",2);
latex(lf1)
%jF = jacobian(lf1, [x1 w1 w2])
 