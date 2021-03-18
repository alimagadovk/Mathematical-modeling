function dy=yp(t,y)
%alpha = 3-1./(2-sin(1+t.^2));
%c = 3.*(3-cos(t));
%beta = 2.*(2-cos(t));
%d = 3-1./(2-sin(1+t.^2));

alpha1 = 4*(1 - 0.35*cos(t^2));
beta1 = 10 - 0.01*cos(t^2);
gamma1 = 20 - 10*cos(t);

alpha2 = 6*(1 - 0.25*cos(t^2));
beta2 = 5 - 0.1*cos(10*t^2);
gamma2 = 25 - 30*cos(10*t);

dy(1) = -alpha1*y(1) - beta1*y(2) + gamma1;
dy(2) = -alpha2*y(2) - beta2*y(1)*y(2) + gamma2;
dy = dy';
end