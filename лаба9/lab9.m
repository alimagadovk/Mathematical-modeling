%%
clc
clear
close all
[t,YY]=ode45('yp',[0 1],[0 0 0]);
plot(t,YY(:,1), 'r')
grid on
title('People')
figure
plot(t,YY(:,2), 'r')
grid on
title('Profit1')
figure
plot(t,YY(:,3), 'r')
grid on
title('Marketing')
profit = YY(:,2) - YY(:,3);
figure
plot(t,profit, 'r')
grid on
title('Profit2')