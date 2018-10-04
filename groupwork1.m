figure (1)
x = [-10:0.01:10];
y = (3)*(x.^2)+(2*x)+1
plot(x,y)
yprime = 6*x + 2;
hold on
plot(x,yprime)

t = [0:0.01:10]

r = (1/5)*t.^3 - 4*t.^2 + 12*t + 3



figure(2)
plot(t,r)
hold on
nr = length(r);
dr = r(2:nr)-r(1:nr-1);
dt = 0.01;
v = dr./dt;
tmid = 0.5*(t(2:nr)+t(1:nr-1));
plot(tmid,v)
hold on 

nv = length(v);
ddr = v(2:nv)-v(1:nv-1);
nt = length(t);
ddt = t(2:nt-1);
a = ddr./dt;
plot(ddt,a);
hold on 
b = (6/5)*ddt-8
plot(ddt,b)

figure(3);
x = [0:0.01:100];
y = (x)./(x+1);
dy = y(2:end) - y(1:end-1);
dx = 0.01;
plot(x,y);
tmid = 0.5*(x(2:end)+x(1:end-1));
hold on
plot(tmid,dy);


