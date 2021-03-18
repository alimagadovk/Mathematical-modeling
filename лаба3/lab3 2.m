close all
clear
v0 = 1000;
a = pi/4;
g = 9.8;
Tmax = 2*v0*sin(a)/g;
T = Tmax;
L = v0^2/g;
v0x = v0 * cos(a);
v0y = v0 * sin(a);
t = 0:1:T;
x = v0x.*t;
y = v0y.*t-g*(t.^2)/2;
figure
plot(x,y)
grid on
%%
f_point = 15;
e_point = 40;
xe=x(f_point:e_point);
alfa=0.01
for i=1:e_point - f_point + 1
ye(i)=y(i + f_point - 1)*(1+alfa*randn);
end
%
figure
plot(xe,ye,'+',x(f_point:e_point),y(f_point:e_point))
grid on
hold on
%
xe=xe';
ye=ye';
A=[xe.^2 xe ones(e_point - f_point + 1,1)]; 
%
AA=A'*A;
%cond(AA);
%A'*ye;
koef=AA\A'*ye;
yet=A*koef;
%
plot(xe,yet, 'r')
hold off
%%
A=[(x').^2 x' ones(length(x),1)];
yet = A*koef;
%
x1=-koef(2)/(2*koef(1));
y1=[x1^2 x1 1]*koef;
%
L=2*x1;
x0=0.8*L;
u0=2000;
b=-g*(x1-x0)^2/(2*u0^2);
a=-(x1-x0);
c=b-y1;
D=a^2-4*b*c;
phi=atan((-a+sqrt(D))/(2*b));
h = (x0 - x1) / (length(x) - 1);
xx=x1:h:x0;
yy=-tan(phi)*(xx-x0)-g*(xx-x0).^2/(2*(u0*cos(phi))^2);
%
x1=0;
y1=0;
b=-g*(x1-x0)^2/(2*u0^2);
a=-(x1-x0);
c=b-y1;
D=a^2-4*b*c;
phi=atan((-a+sqrt(D))/(2*b));
xx2=x1:h:x0;
yy2=-tan(phi)*(xx2-x0)-g*(xx2-x0).^2/(2*(u0*cos(phi))^2);
%
figure
grid on
hold on
%plot(x,y);
%plot(xx,yy)
%
for i = 1:length(x)/2 + 1
plot(x(i),y(i),'.b');
plot(x(i),yet(i),'.r')
%if (i > length(xe))
%    length(xx) - i + 1 + length(xe)
%plot(xx(length(xx) - i + 1 + length(xe)),yy(length(yy) - i + 1 + length(xe)), 'g.');
%end
%length(xx) - 2*i + 1
plot(xx(length(xx) - 2*i + 2),yy(length(xx) - 2*i + 2), 'g.');
axis([0 12*10^4 0 3*10^4])
pause(0.05)
end
plot(xx(1),yy(1),'*r')
pause(1)
for i = 1:length(xx2) / 2
%if (i > length(xe))
%    length(xx) - i + 1 + length(xe)
%plot(xx(length(xx) - i + 1 + length(xe)),yy(length(yy) - i + 1 + length(xe)), 'g.');
%end
%length(xx) - i
plot(xx2(length(xx2) - 2*i),yy2(length(xx2) - 2*i), 'g.');
axis([0 12*10^4 0 3*10^4])
pause(0.01)
end
plot(xx2(1),yy2(1),'*r')




