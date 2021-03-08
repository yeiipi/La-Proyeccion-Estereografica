%% Fígura: Lemniscata de Bernoulli
% https://es.wikipedia.org/wiki/Lemniscata_de_Bernoulli 
theta=-2*pi:0.01:3*pi;
d = 2;

X_1= (-d+1*sqrt(2)*cos(theta+pi))./(sin(theta+pi).^2-5);
Y_1= (-d+1*sqrt(2)*cos(theta+pi).*sin(theta+pi))./(sin(theta+pi).^2-5);

X_2= (d+1*sqrt(2)*cos(theta+pi))./(sin(theta+pi).^2-5);
Y_2= (d+1*sqrt(2)*cos(theta+pi).*sin(theta+pi))./(sin(theta+pi).^2-5);

X_3= (-d+1*sqrt(2)*cos(theta+pi))./(sin(theta+pi).^2-5);
Y_3= (d+1*sqrt(2)*cos(theta+pi).*sin(theta+pi))./(sin(theta+pi).^2-5);

X_4= (d+1*sqrt(2)*cos(theta+pi))./(sin(theta+pi).^2-5);
Y_4= (-d+1*sqrt(2)*cos(theta+pi).*sin(theta+pi))./(sin(theta+pi).^2-5);

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
plot(X_2, Y_2, 'color',[0.93,0.2588,0.4])
hold on
plot(X_3, Y_3, 'color',[1,0.82,0.247])
hold on
plot(X_4, Y_4, 'color',[0.05,0.678,0.41])
grid on
xlim([min([min(X_1) min(X_2) min(X_3) min(X_4)]) max([max(X_1) max(X_2) max(X_3) max(X_4)])])
ylim([min([min(Y_1) min(Y_2) min(Y_3) min(Y_4)]) max([max(Y_1) max(Y_2) max(Y_3) max(Y_4)])])
xlabel('Real')
ylabel('Imaginario')
title("Lemniscata de Bernoulli")
saveas(gcf, 'figs/f3_Plano.png');

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
title("Lemniscata de Bernoulli")
saveas(gcf, 'figs/f3_Riemman.png');
axis equal  
