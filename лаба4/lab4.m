clc
clear
close all
[t,Y]=ode45('yp',[0 3],0);
plot(t,t.^2,'g+',t,Y,'r')
grid on
%%
clc
clear
close all
[t,Y]=ode45('ypm',[0 2*pi],0);
plot(t,sin(t),'g+',t,Y,'b')
grid on
%%
clc
clear
close all
[t,Y]=ode45('yp2',[1 3],1);
plot(t,t.^2,'g+',t,Y,'r')
grid on
%%
clc
clear
close all
[t,YY]=ode45('yp3',[0 2*pi],[1 0]);

plot(t,cos(t),'r+',t,YY)
grid on
figure

plot(t,cos(t),'r+',t,YY(:,1))
grid on
%%
clc
clear
close all
[t,YY]=ode45('yp4',[0 10],10);
plot(t,YY)
grid on
%%
clc
clear
close all
[t,YY]=ode45('yp5',[0 20],10);

plot(t,YY)
grid on