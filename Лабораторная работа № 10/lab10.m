%%
clc
clear
close all
H = 1.2;
k = 1.1;
k1 = 2; % амплитуда реакции общества
l = 3;
x0 = 0.1;
% a = x0/(k1*l^2);
% b = k*l/H;
a = 0.01;
b = 0.9;
alpha = 0.4;
p0 = @(x)(H - k.*x);
p1 = @(x)(1 - alpha).*p0(x);
p2 = @(x)(1 + alpha).*p0(x);
vx = 0:0.01:1;
figure
hold on
grid on
%
 p = @(x)(a^(1/2) * b) / (exp(a^(-0.5)) - exp(-a^(-0.5))) .* ((1 - exp(-a^(-0.5))).*exp(x.*a^(-0.5)) + (1 - exp(a^(-0.5))).*exp(-x.*a^(-0.5))) + (1 - b.*x);

 plot(vx,p(vx), 'LineWidth', 2)

%
plot(vx,p1(vx), 'g', 'LineWidth', 2)
plot(vx,p2(vx), 'r', 'LineWidth', 2)
plot(vx,p0(vx), 'k', 'LineWidth', 2)
legend('p','p1','p2','p0')
%%
F1 = @(x)k1.*(p0(x) - p(x));
F0 = @(x)k1.*(p0(x) - p(x));

figure
vx = 0:0.01:1;
vy = F1(vx);
vx = p(vx);
plot(vx,vy, 'LineWidth', 2)
hold on
grid on
line([0.2 0.2], [min(vy) max(vy)], 'Color', 'Red', 'LineWidth', 1.5)
line([0.9 0.9], [min(vy) max(vy)], 'Color', 'Green', 'LineWidth', 1.5)
legend('F','p2','p1')