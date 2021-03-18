function dy=yp(t,y)
%alpha = 3-1./(2-sin(1+t.^2));
%c = 3.*(3-cos(t));
%beta = 2.*(2-cos(t));
%d = 3-1./(2-sin(1+t.^2));

alpha1 = 4*(1 - 0.35*cos(t^2));
beta1 = 10 - 0.01*cos(t^2);
gamma1 = 20 - 250*cos(50*t);

alpha2 = 4*(1 - 0.25*cos(t^2));
beta2 = 10 - 0.01*cos(t^2);
gamma2 = 25 - 100*cos(100*t);

alpha3 = 5*(1 - 0.55*cos(t^2));
beta3 = 12 - 0.05*cos(5*t^2);
gamma3 = 40 - 80*cos(150*t);

dy(1) = -alpha1*y(1) - beta1*(y(2) + y(3)) + gamma1;
dy(2) = -alpha2*y(2) - beta2*(y(1) + y(3)) + gamma2;
dy(3) = -alpha3*y(3) - beta3*(y(1) + y(2)) + gamma3;
dy = dy';
end