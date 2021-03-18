u = 3; 
lambda = 0.1; 
mp = 0.3; 
m0 = 100; 
ms = m0*lambda; 
mt = m0 - mp - ms; 
mtt = 0 : 0.01 : mt; 
v = u*log(m0./(m0-mtt)); 

plot(mtt, v)
xlabel('Масса сгоревшего топлива, т')
ylabel('Скорость ракеты, км/с')
grid on

%%
close all
v3 = 10;
u = 3; 
lambda = 0.1;
P = exp(-v3/(3*u));
alpha = (1 - lambda) / (P - lambda);
mp = 0.3; 
m3 = alpha*mp - mp;
m2 = alpha*(mp + m3) - (mp + 3);
m0 = mp*alpha^3;
m1 = m0 - m2 - m3 - mp;
 
mtt1 = 0 :0.01: (1-lambda)*m1;
mtt2 = 0 :0.01: (1-lambda)*m2;
mtt3 = 0 :0.01: (1-lambda)*m3;
 
v1 = u*log((mp+m1+m2+m3)./(mp+m1-mtt1+m2+m3));
v2 = v1(end) + u*log((mp+m2+m3)./(mp+m2-mtt2+m3));
v3 = v2(end) + u*log((mp+m3)./(mp+m3-mtt3));
 
figure
hold on, grid on
plot(mtt1, v1, 'g')
plot(mtt1(end)+mtt2, v2, 'b')
plot(mtt1(end)+mtt2(end)+mtt3, v3, 'r')
xlabel('масса сгоревшего топлива, т')
ylabel('скорость ракеты, км/с')
plot(mtt1(end)+mtt2(1), v2(1), '*') 
plot(mtt1(end)+mtt2(end)+mtt3(1), v3(1), '*') 
