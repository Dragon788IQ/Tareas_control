clc
clear
clear all
syms h qi q %Variables que afectan a x
syms L D hs qis qs

f1 = (1/(h*2*L*(D-h)^0.5))*(qi-q)
lf1 = taylor(f1, [h qi q],[hs qis qs],"order",2);
latex(lf1)
 