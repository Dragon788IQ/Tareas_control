%Tarea 1 modelo 2 control de procesos
%Reactores en serie con mismo volumen y flujo ctte
function Reactor_en_serie_2
clear
clc
[T,y]=ode45(@modelo_2,[0,80],[0,0,0,0]);
y
%datos
plot(T,y)
title("Tarea no.1 modelo 2 Aguayo Johann")
ylabel("Ca [mol/m^3]"),xlabel("Tiempo [s]");
grid
legend("Ca1","Cb1","Ca2","Cb2")
end
function dydT=modelo_2(T,y)
%datos
Ca1 = y(1);
Cb1= y(2);
Ca2 = y(3);
Cb2 = y(4);
F = 0.008; %m^3/s
v1 = 0.04; %m^3
v2 = 0.02; %m^3
k = 0.01; %1/s
Cao = 0.5; %mol/m^3

%Ecuacion de diseño CSTR
dydT(1)=((F*Cao)/v1)-((F*Ca1)/v1)-(k*Ca1);
dydT(2)=(k*Ca1)-((F*Cb1)/v1);
dydT(3)=((F*Ca1)/v2)-((F*Ca2)/v2)-(k*Ca2);
dydT(4)=(k*Ca2)+((F*Cb1)/v2)-((F*Cb2)/v2);
dydT=dydT';
end