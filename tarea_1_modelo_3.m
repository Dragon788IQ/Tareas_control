%Tarea 1 modelo 2 control de procesos
%Reactores en serie con mismo volumen y flujo ctte
function Reactor_en_serie_3
clear
clc
[T,y]=ode45(@modelo_3,[0,80],[0,0,0]);
y
%datos
plot(T,y)
title("Tarea no.1 modelo 3 Aguayo Johann")
ylabel("Ca [mol/m^3]"),xlabel("Tiempo [s]");
grid
legend("Reactor 1","Reactor 2","Total")
end
function dydT=modelo_3(T,y)
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
dydT(1)=(((1-b)*F*Cao)/v1)-(((1-b)*F*Ca1)/v1)-(k*Ca1);

dydT(2)=((b*F*Cao)/v2)-((b*F*Ca2)/v2)-(k*Ca2);

dydT(3)= dydT(1) + dydT(2);

dydT=dydT';
end