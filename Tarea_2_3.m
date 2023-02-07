%Segunda linealizacion
syms y1 y2
syms m1 m2 y10 y20 

f1 = ((mumax*x*s)/(ks+s));
lf1 = taylor(f1,[x s], [x0 sl0], "order", 2)

f2 =  ((mumax*x*s)/((ks+s)*yxs));
lf2 = taylor(f2, [x s], [x0 sl0], "order", 2)

F = [f1; f2];
jF = jacobian(F,[x s]);

jF2 = subs(jF, [x s], [x0 sl0]);

latex(jF)