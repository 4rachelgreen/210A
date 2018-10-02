% GEOG 210A
% Trigonometric Functions
% 27 September 2018

% Plot the Unit Circle
theta = [0:.01:2*pi];
r = 1; % Define the radius of the circle r = 1.
x = r*cos(theta); 
y = r*sin(theta); 

% Semi-colon suppresses output on screen (when running 
% in command line, use this so as not to display all
% variables.

plot(x,y)
plot(x,y,'.')

% To put a title + labels on your plot:
title('Unit circle')
xlabel('x')
ylabel('y')

% Example of trig functions

figure(2)
plot(theta,sin(theta))
hold on % To keep that function on the plot
plot(theta,cos(theta))

% Add a legend + tick marks to x-axis
figure(2)
legend('sin','cos')
set(gca,'xtick',[0:pi/2:2*pi]) % gca = get current axis
set(gca,'xticklabel',{'0','\pi/2','\pi','3\pi/2','2\pi'})

% To clear command window, type clc (keeps all variables)






