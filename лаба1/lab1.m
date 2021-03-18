% 1
clc
clear
close all
h = 1.7;
L = 500;
g = 9.8;
tf = sqrt(2.*h./g);
x = @(t)L.*sqrt(g./(2.*h)).*t;
y = @(t)(h - g.*(t.^2)./2);
T = 0:0.0005:tf;
X = x(T);
Y = y(T);
figure
comet(X,Y)
hold on
title('График полёта пули в системе коорд. xOy')
plot(X,Y, 'r')
grid on
vL = L.*(1 + 0.3.*randn(2000,1));
figure
hist(vL,30)
V = vL.*sqrt(g./(2*h));
title('L')
figure
hist(V,30)
title('V')
m = sum(V)/length(V)
disp = sqrt(sum((V - m).^2) / length(V))
%% 2
clc
clear
close all
m = 0.005;
M = 10;
l = 2;
g = 9.8;
alpha = @(s)s .* pi./180;
va = 35.*(1 + 0.3.*randn(2000,1));
figure
hist(va,30)
va = alpha(va);
V = sqrt((2.*(M + m).*g.*l.*(1 - cos(va)))./m);
figure
hist(V, 30)
%%
clc
clear
close all
m = 0.016;
M = 5;
l = 2;
g = 9.8;
alpha = @(s)s .* pi./180;
va = 35.*(1 + 0.3.*randn(2000,1));
figure
hist(va,30)
va = alpha(va);
V = (m + M)./m .* sqrt(2.*g.*l.*(1 - cos(va)));
figure
hist(V, 30)