
clc
clear
close all
v1 = 10:10:30;
v2 = 10:-2:1;
figure
hold on
for i = 1:length(v1)
    for j = 1:length(v2)
[t,YY]=ode45('yp',[0 2],[v1(i) v2(j)]);


plot(YY(:,1),YY(:,2), 'r')
    end
end
grid on
axis([0 max(v1) 0 max(v2)])
%%
axis([0 30 0 20])