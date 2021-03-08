clc

%% Fígura: Hipocicloide
% https://www.mathworks.com/matlabcentral/fileexchange/51310-hypotrochoid 
R=2.1;
r=0.26;
d=2.5;
theta=-2*pi:0.01:3*pi;
X=(R-r)*cos(theta)+d*cos((R-r)*theta/r);
Y=(R-r)*sin(theta)+d*sin((R-r)*theta/r);

%% Conversión de Coordenadas
Z = complex(X, Y);
[X1,X2,X3] = f_complex_to_riemann(Z);

%% Plot Plano Complejo
figure
plot(X, Y, 'color',[0.85,0.12,0.35])
grid on
xlim([min(X) max(X)])
ylim([min(Y) max(Y)])
xlabel('Real')
ylabel('Imaginario')
title("Hipocicloide")
title("Hipocicloide")
saveas(gcf, 'figs/f1_Plano.png');

%% Plot Proyección Estereográfica
figure
[a,b,c] = sphere(30);
plot3(a, b, c,'LineStyle',':','color',[0.5,0.5,0.5]);
hold on
plot3(X1, X2, X3,'color',[0.85,0.12,0.35])
grid on
xlim([-1 1])
ylim([-1 1])
zlim([-1 1])
xlabel('X1')
ylabel('X2')
zlabel('X3')
title("Hipocicloide")
saveas(gcf, 'figs/f1_Riemman.png');
axis equal  