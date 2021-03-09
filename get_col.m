function col = get_col(AZ,VE,AM,NA,SA)
if AZ == 1
%     disp("AZUL");
    col = [38/255,70/255,83/255];
elseif VE == 1
%     disp("VERDE");
    col = [42/255,157/255,143/255];
elseif AM == 1
%     disp("AMARILLO");
    col = [233/255,196/255,106/255];
elseif NA == 1
%     disp("NARANJA");
    col = [244/255,162/255,97/255];
elseif SA == 1
%     disp("SALMON");
    col = [238/255,151/255,129/255];
else
%     disp("ELSE");
    col = [38/255,70/255,83/255];
end
end

