clc

%% Fígura: Espiral
% https://www.geogebra.org/m/zsHgCvq7

theta=-2*pi:0.01:3*pi;
A = 1.27;
B = 0.35;

X_1 = A.*exp(B*theta).*cos(theta);
Y_1 = A.*exp(B*theta).*sin(theta);

X_2 = A.*exp(B*theta).*cos(theta);
Y_2 = -A.*exp(B*theta).*sin(theta);

X_3 = -A.*exp(B*theta).*cos(theta);
Y_3 = A.*exp(B*theta).*sin(theta);

X_4 = -A.*exp(B*theta).*cos(theta);
Y_4 = -A.*exp(B*theta).*sin(theta);

%% Conversión de Coordenadas
Z_1= complex(X_1, Y_1);
[X1_1,X2_1,X3_1] = f_complex_to_riemann(Z_1);

Z_2= complex(X_2, Y_2);
[X1_2,X2_2,X3_2] = f_complex_to_riemann(Z_2);

Z_3= complex(X_3, Y_3);
[X1_3,X2_3,X3_3] = f_complex_to_riemann(Z_3);

Z_4= complex(X_4, Y_4);
[X1_4,X2_4,X3_4] = f_complex_to_riemann(Z_4);

%% Plot Plano Complejo
figure
plot(X_1, Y_1, 'color',[0.329,0.05,0.43])
hold on
grid on
plot(X_2, Y_2, 'color',[0.93,0.2588,0.4])
hold on
plot(X_3, Y_3, 'color',[1,0.82,0.247])
hold on
plot(X_4, Y_4, 'color',[0.05,0.678,0.41])
xlim([min(X_4) max(X_1)])
ylim([min(Y_4) max(Y_1)])
xlabel('Real')
ylabel('Imaginario')
title("Espiral")
saveas(gcf, 'figs/f2_Plano.png');

%% Plot Proyección Estereográfica
figure
[a,b,c] = sphere(30);
plot3(a, b, c,'LineStyle',':','color',[0.5,0.5,0.5]);
hold on
plot3(X1_1, X2_1, X3_1,'color',[0.329,0.05,0.43])
hold on
plot3(X1_2, X2_2, X3_2,'color',[0.93,0.2588,0.4])
hold on
plot3(X1_3, X2_3, X3_3,'color',[1,0.82,0.247])
hold on
plot3(X1_4, X2_4, X3_4,'color',[0.05,0.678,0.41])
grid on
xlim([-1 1])
ylim([-1 1])
zlim([-1 1])
xlabel('X1')
ylabel('X2')
zlabel('X3')
title("Espiral")
saveas(gcf, 'figs/f2_Riemman.png');
axis equal  