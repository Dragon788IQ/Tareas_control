x=(0:0.1:10)
y=cos(2.78*x)
y_2 = sin(10*x)
plot3(x,y,y_2,"r")
title("Clase aprendiendo a graficar")
xlabel("Distancia")
ylabel("Resultado")
grid
legend("cos(x)","sin(x)")

