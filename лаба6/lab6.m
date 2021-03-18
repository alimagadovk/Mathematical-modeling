
clc
clear
close all
v1 = 10:10:30;
v2 = 30:-10:10;
figure
hold on
for i = 1:length(v1)
    for j = 1:length(v2)
[t,YY]=ode45('yp',[0 0.1],[v1(i) v2(j)]);


plot(YY(:,1),YY(:,2), 'r')
    end
end
grid on
%%

clc
clear
close all
[t,YY]=ode45('yp',[0 20],[10 10]);

plot(t,YY(:,1))
grid on
figure
plot(t,YY(:,2))
grid on

figure
comet(YY(:,1),YY(:,2))
grid on
plot(YY(:,1),YY(:,2))
grid on