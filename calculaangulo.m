%% Universidade Estadual de Londrina
%% Laboratory of Applied Biomechanics
%% Function created by Felipe Arruda Moura - 21/12/2022
%% Function to calculate the angle from 3 pairs of coordinates

function [angulo]=calculaangulo(dados)



nlin=size(dados,1); % define o n�mero de linhas do arquivo
Segment_1= dados (:,1:2)- dados (:,3:4); % Os segmentos s�o definidos atrav�s da subtra��o das coordenadas dos pontos das extremidades pelas coordenadas do v�rtice (no caso, o joelho).
Segment_2= dados (:,5:6)- dados (:,3:4); % Os segmentos s�o definidos atrav�s da subtra��o das coordenadas dos pontos das extremidades pelas coordenadas do v�rtice (no caso, o joelho).


%% Calcula o �ngulo relativo do joelho
for i=1:nlin;
angulo(i,1)=acosd(dot(Segment_1(i,:),Segment_2(i,:))/(norm(Segment_1(i,:))*norm(Segment_2(i,:))));
end

