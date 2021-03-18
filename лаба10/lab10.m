%%
clc
clear
close all
a = 0.01;
b = 0.9;
H = 4;
k = 1.5;
k1 = 1;
p0 = @(x)(H - k.*x);
p = @(x)(a^(1/2) * b) / (exp(a - 1/2) - exp(-a - 1/2)) .* ((1 - exp(-a - 1/2)).*exp(x.*a - 1/2) + (1 - exp(a - 1/2)).*exp(-x.*a - 1/2)) + (1 - b.*x);
F = @(x)k1.*(p0(x) - p(x));
l = 1;
vx = 0:0.01:l;
vy = p(vx);
plot(vx,vy)
grid on
figure
vx = 0:0.01:l;
vy = F(vx);
plot(vx,vy)
grid on