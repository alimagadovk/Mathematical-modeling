function yp5=yp5(t,y)
%
b1 = 3;
c1 = 5;
a1 = 8;
gw = 1 - b1 ./ (1 + c1.*(t - a1).^2);

b2 = 2;
c2 = 3.5;
a2 = 15;
gb = 1 + b2 ./ (1 + c2.*(t - a2).^2);
alpha = 3-1./(2-sin(1+t.^2)).* gw .* gb;
beta = 2;

yp5=y(1).*(alpha - beta) .* gw.* gb;