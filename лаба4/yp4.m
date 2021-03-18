function yp4=yp4(t,y)
%
alpha = 3-1./(2-sin(1+t.^2));
beta = 2;

yp4=y(1).*(alpha - beta);