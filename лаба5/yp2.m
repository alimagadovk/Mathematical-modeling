function dy=yp2(t,y)
%alpha = 3-1./(2-sin(1+t.^2));
%c = 3.*(3-cos(t));
%beta = 2.*(2-cos(t));
%d = 3-1./(2-sin(1+t.^2));

alpha = 3;
c = 1.5;
beta = 5;
d = 0.5;
gamma = 2;
e = 0.1;

dy(1) = (alpha - e*y(3) - c*y(2))*y(1);
dy(2) = (-beta + d*y(1) - e*y(3) + 0.2*d*y(3))*y(2);
dy(3) = 0.1*(-gamma + e*y(1) + e*y(2))*y(3)/(t + 1);
dy = dy';
end