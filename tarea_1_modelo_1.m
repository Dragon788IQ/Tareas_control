%Tarea 1 modelo 1 control de procesos
%Reactores en serie con mismo volumen y flujo ctte
function Reactor_en_serie_1
clear
clc
[T,y]=ode45(@modelo_1,[0,80],[0,0]);
y(:,2)
%datos
plot(T,y(:,2),"r")
title("Tarea no.1 modelo 1 Aguayo Johann")
ylabel("Ca [mol/m^3]"),xlabel("Tiempo [s]");
grid
legend("CA_total")

end
function dydT=modelo_1(T,y)
%datos
Ca1 = y(1);
Ca2 = y(2);
F = 0.008; %m^3/s
v = 0.04; %m^3
k = 0.01; %1/s
Cao = 0.5; %mol/m^3

%Ecuacion de diseño CSTR
dydT(1)=((F*Cao)/v)-((F*Ca1)/v)-(k*Ca1);
dydT(2)=((F*Ca1)/v)-((F*Ca2)/v)-(k*Ca2);
dydT=dydT';
end