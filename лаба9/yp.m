function dy=yp(t,y)
%alpha = 3-1./(2-sin(1+t.^2));
%c = 3.*(3-cos(t));
%beta = 2.*(2-cos(t));
%d = 3-1./(2-sin(1+t.^2));
N0 = 55;
p = 5;
s = 100;
alpha1 = 2*(1 - 0.5*abs(cos(10*t)));
alpha2 = 0.8*(1 - 0.8*abs(cos(t)));

dy(1) = (alpha1 + alpha2*y(1))*(N0 - y(1));
dy(2) = p*y(1);
dy(3) = s*alpha1;
dy = dy';
end