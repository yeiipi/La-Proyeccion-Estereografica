function [x,y] = f_riemman_to_complex(x1,x2,x3)
% f_riemman_to_complex es una función que con las cordenadas en la
% esfera de riemman retorna las coordenadas trasladadas al plano real.

x = x1/(1-x3);
y = x2/(1-x3);
end