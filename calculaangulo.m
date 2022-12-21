%% Universidade Estadual de Londrina
%% Laboratory of Applied Biomechanics
%% Function created by Felipe Arruda Moura - 21/12/2022
%% Function to calculate the angle from 3 pairs of coordinates

function [angulo] = calculaangulo(dados)

nlin = size(dados,1); % define o numero de linhas do arquivo
segment_1 = dados (:,1:2) - dados (:,3:4); % Os segmentos sao definidos atraves da subtracao das coordenadas dos pontos das extremidades pelas coordenadas do vertice (no caso, o joelho).
segment_2 = dados (:,5:6) - dados (:,3:4); % Os segmentos sao definidos atraves da subtracao das coordenadas dos pontos das extremidades pelas coordenadas do vertice (no caso, o joelho).

%% Calcula o angulo relativo do joelho
for i = 1:nlin;
    angulo(i, 1) = acosd(dot(segment_1(i,:), segment_2(i,:)) / (norm(segment_1(i, :)) * norm(segment_2(i, :))));
end
