clc

% de donde me robé el hiposicloide?
% . . . 
% de aquí:
% https://www.mathworks.com/matlabcentral/fileexchange/51310-hypotrochoid 

R=5;
r=0.5;
d=5;
theta=-2*pi:0.01:3*pi;
X=(R-r)*cos(theta)+d*cos((R-r)*theta/r);
Y=(R-r)*sin(theta)+d*sin((R-r)*theta/r);

Z = complex(X, Y);

[X1,X2,X3] = f_complex_to_riemann(Z);

figure
plot(X, Y, 'r')
grid on
xlim([min(X) max(X)])
ylim([min(Y) max(Y)])
xlabel('Real')
ylabel('Ima ginario')
saveas(gcf, 'hipoPlano.png');

figure
[a,b,c] = sphere(20);
colormap winter
plot3(a, b, c,'LineStyle','--','color',[0.5,0.5,0.5]);
hold on
grid on
plot3(X1, X2, X3, 'r')
xlim([-1 1])
ylim([-1 1])
zlim([-1 1])
saveas(gcf, 'hipoRiemman.png');
axis equal

    