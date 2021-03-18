
clc
clear
close all
v1 = 10:50:300;
v2 = 300:-50:10;
figure
hold on
for i = 1:length(v1)
    for j = 1:length(v2)
[t,YY]=ode45('yp',[0 1],[v1(i) v2(j)]);


plot(YY(:,1),YY(:,2), 'r')
    end
end
grid on
xlabel('N1')
ylabel('N2')
axis([0 max(v1) 0 max(v2)])
%%
axis([0 20 0 20])
%%
clc
clear
close all
v1 = 1:100:300;
v2 = 1:50:100;
v3 = 1:100:300;
figure
hold on
for i = 1:length(v1)
    for j = 1:length(v2)
        for k = 1:length(v3)
            
            [t,YY]=ode45('yp2',[0 2],[v1(i) v2(j) v3(k)]);
            plot3(YY(:,1),YY(:,2), YY(:,3), 'r')
        end
    end
end
grid on
xlabel('N1')
ylabel('N2')
zlabel('N3')
axis([0 max(v1) 0 max(v2) 0 max(v3)])
%%
axis([0 50 0 20 0 50])