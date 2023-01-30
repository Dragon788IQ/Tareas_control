%Tarea 1 modelo 2 control de procesos
%Reactores en serie con mismo volumen y flujo ctte
function Reactor_en_serie_2
clear
clc
[T,y]=ode45(@modelo_2,[0,80],[0,0]);
y(:,2)
%datos
plot(T,y(:,2),"b")
title("Tarea no.1 modelo 2 Aguayo Johann")
ylabel("Ca [mol/m^3]"),xlabel("Tiempo [s]");
grid
legend("CA_total")

end
function dydT=modelo_2(T,y)
%datos
Ca1 = y(1);
Ca2 = y(2);
F = 0.008; %m^3/s
v1 = 0.04; %m^3
v2 = 0.02; %m^3
k = 0.01; %1/s
Cao = 0.5; %mol/m^3

%Ecuacion de diseño CSTR
dydT(1)=((F*Cao)/v1)-((F*Ca1)/v1)-(k*Ca1);
dydT(2)=((F*Ca1)/v2)-((F*Ca2)/v2)-(k*Ca2);
dydT=dydT';
end