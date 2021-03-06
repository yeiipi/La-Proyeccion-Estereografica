function [x1,x2,x3] = f_complex_to_riemann(Z)
% f_complex_to_riemann es una función que apartir de un punto en el plano
% complejo retorna las coordenadas respectivas en la esfera de riemman.

x1 = 2.*real(Z)./((abs(Z).^2)+1);
x2 = 2.*imag(Z)./((abs(Z).^2)+1);
x3 = ((abs(Z).^2)-1)./((abs(Z).^2)+1);
end