x=(0:0.1:10)
y=cos(x)
y_2 = sin(x)
plot(x,y,"r",x,y_2,"b")
title("Clase aprendiendo a graficar")
xlabel("Distancia")
ylabel("Resultado")
grid
legend("cos(x)","sin(x)")
