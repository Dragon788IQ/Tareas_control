%Tarea 1 modelo 2 control de procesos
%Reactores en serie con mismo volumen y flujo ctte
function Reactor_en_serie_4
clear
clc
[T,y]=ode45(@modelo_4,[0,80],[0,0]);
y
Cao = 0.5
%datos
plot(T,y,Cao-y(:,1))
title("Tarea no.1 modelo 3 Aguayo Johann")
ylabel("Ca [mol/m^3]"),xlabel("Tiempo [s]");
grid
legend("Reactor 1","Reactor 2")
end
function dydT=modelo_4(T,y)
%datos
Ca1 = y(1);
Ca2 = y(2);
F = 0.008; %m^3/s
v1 = 0.04; %m^3
v2 = 0.02; %m^3
k = 0.01; %1/s
Cao = 0.5; %mol/m^3
b = 0.4;
%Ecuacion de diseño CSTR
dydT(1)=((F*Cao)/v1)+((b*F*Ca2)/v1)-((F*Ca1*(1+b))/v1)-(k*Ca1);
dydT(2)=((F*b*Ca1)/v2)-((F*Ca2*b)/v2)-(k*Ca1);
dydT=dydT';
end