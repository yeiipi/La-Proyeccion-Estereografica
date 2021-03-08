clc

%% Fígura: Cicloide
% http://www.epsilones.com/paginas/curvas/curvas-014-cicloide.html 
B=0.5;
A=0.5;
theta=-20*pi:0.01:20*pi;
X_1= theta-B * sin(theta/A);
Y_1= B-B * cos(theta/A);

X_2= -theta+B * sin(theta/A);
Y_2= -B+B * cos(theta/A);

%% Conversión de Coordenadas
Z_1= complex(X_1, Y_1);
[X1_1,X2_1,X3_1] = f_complex_to_riemann(Z_1);

Z_2= complex(X_2, Y_2);
[X1_2,X2_2,X3_2] = f_complex_to_riemann(Z_2);

%% Plot Plano Complejo
figure
plot(X_1, Y_1, 'color',[0.329,0.05,0.43])
hold on
plot(X_2, Y_2, 'color',[0.05,0.678,0.41])
grid on
xlim([min([min(X_1) min(X_2)]) max([max(X_1) max(X_2)])])
ylim([min([min(Y_1) min(Y_2)]) max([max(Y_1) max(Y_2)])])
xlabel('Real')
ylabel('Imaginario')
title("Cicloide")
saveas(gcf, 'figs/f4_Plano.png');

%% Plot Proyección Estereográfica
figure
[a,b,c] = sphere(30);
plot3(a, b, c,'LineStyle',':','color',[0.5,0.5,0.5]);
hold on
plot3(X1_1, X2_1, X3_1,'color',[0.329,0.05,0.43])
hold on
plot3(X1_2, X2_2, X3_2,'color',[0.05,0.678,0.41])
xlim([-1 1])
ylim([-1 1])
zlim([-1 1])
xlabel('X1')
ylabel('X2')
zlabel('X3')
title("Cicloide")
saveas(gcf, 'figs/f4_Riemman.png');
axis equal  