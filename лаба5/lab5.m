
clc
clear
close all
[t,YY]=ode45('yp',[0 20],[10 4]);

plot(t,YY(:,1))
grid on
title('������ ��������� ������')
figure
plot(t,YY(:,2))
grid on
title('������ ��������� ������')

figure
comet(YY(:,1),YY(:,2))
grid on
plot(YY(:,1),YY(:,2))
grid on
title('������ ��������� ������ � �����. �� ���-�� ������')
%%
clc
clear
close all
[t,YY]=ode45('yp2',[0 70],[100 10 2]);

plot(t,YY(:,1))
grid on
figure
plot(t,YY(:,2))
grid on
figure
plot(t,YY(:,3))
grid on
%%

figure
comet3(YY(:,1),YY(:,2),YY(:,3))
grid on
plot3(YY(:,1),YY(:,2),YY(:,3))
grid on