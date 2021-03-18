function dy=yp(t,y)
%alpha = 3-1./(2-sin(1+t.^2));
%c = 3.*(3-cos(t));
%beta = 2.*(2-cos(t));
%d = 3-1./(2-sin(1+t.^2));

alpha = 5;
c = 1.5;
beta = 5;
d = 0.25;

dy(1) = (alpha - c*y(2))*y(1);
dy(2) = (-beta + d*y(1))*y(2);
dy = dy';
end