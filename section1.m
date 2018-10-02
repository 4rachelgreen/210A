%section week 1 work
%hypothetical drifters

%time domain
dt = 0.1;
t = [0:dt:10];

%position
x = exp(t./2).*sin(2*t);
y = exp(t./5).*cos(2*t);

%plot position
figure(1)
plot(x,y,'o')


%calculate velocity
%u-velocity = dx/dt
nx = length(x);
dx = x(2:nx)-x(1:nx-1);
u = dx./dt;
tmid = .5*(t(2:nx) + t(1:nx-1));

%v-velocity = dy/dt
ny = length(y);
dy = y(2:ny)-x(1:ny-1);
v = dy./dt;

%calculate and plot acceleration
%x-acceleration
d2x = dx(2:nx-1)-dx(1:nx-2)
ta = t(2:nx-1)
xa = d2x./ta

%y-acceleration
d2y = dy(2:ny-1)-dy(1:ny-2)
ya = d2y./ta

%plot x-position and velocity
figure(2)
subplot(3,1,1)
plot(t,x,'o')
title('x-position')
xlabel('time')
subplot(3,1,2)
plot(tmid,u,'x')
title('u-velocity')
xlabel('time')
subplot(3,1,3)
plot(ta,xa,'o')
title('u-acceleration')
xlabel('time')

%plot y-position and velocity
figure(3)
subplot(3,1,1)
plot(t,y,'o')
title('y-position')
xlabel('time')
subplot(3,1,2)
plot(tmid,v,'o')
title('v-velocity')
xlabel('time')
subplot(3,1,3)
plot(ta,ya,'o')
title('v-acceleration')
xlabel('time')


