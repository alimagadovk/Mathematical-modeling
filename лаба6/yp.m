function dy=yp(t,y)
%alpha = 3-1./(2-sin(1+t.^2));
%c = 3.*(3-cos(t));
%beta = 2.*(2-cos(t));
%d = 3-1./(2-sin(1+t.^2));

alpha1 = 10*(1 - 0.35*cos(t^2));
beta1 = 4 - 0.01*cos(t^2);
gamma1 = 2 - cos(t);

alpha2 = 10*(1 - 0.25*cos(t^2));
beta2 = 4 - 0.01*cos(t^2);
gamma2 = 2.5 - cos(t);

dy(1) = alpha1*y(2) - beta1*y(1) + gamma1;
dy(2) = alpha2*y(1) - beta2*y(2) + gamma2;
dy = dy';
end