% Joseph Mercedes
% Assignment #3

clc; clear all; close all;

%% Problem 1

% Part A
x = -5:.1:5;
y = (3*x.^4)-(2*x.^3)+(5*x)+11+(2.2*x.^-1);
z = (5*x.^3)+(3*x.^2)-99;
figure;
plot(x,[y' z'])
title('REPOOC')
xlabel('time')
ylabel('stock')
legend('y','z')
axis();

% Part B
figure;

subplot(2,1,1);
plot(x,y);
title('REPOOC - Y');
xlabel('time')
ylabel('stock')
legend('y')
axis();

subplot(2,1,2);
plot(x,z);
title('REPOOC - Z');
xlabel('time')
ylabel('stock')
legend('z')
axis();

% Part C
yc = y.^-1;
zc = z.^-1;

figure;

subplot(4,1,1);
plot(x,y);
title('REPOOC - Y');
xlabel('time')
ylabel('stock')
legend('y')
axis();

subplot(4,1,2);
plot(x,z);
title('REPOOC - Z');
xlabel('time')
ylabel('stock')
legend('z')
axis();

subplot(4,1,3);
plot(x,yc);
title('REPOOC - Y Correct')
xlabel('time')
ylabel('stock')
legend('yc')
axis();

subplot(4,1,4);
plot(x,zc);
title('REPOOC - Z Correct')
xlabel('time')
ylabel('stock')
legend('zc')
axis();

%% Problem 2

% Part A
xx = -10:.1:10
yy = -10:.1:10
[xx,yy] = meshgrid(xx,yy);
zz = (cos(xx)+sin(yy)).^5;

figure;
plot3(xx,yy,zz)
title('Terrian of Baltam')
xlabel('km')
ylabel('km')
zlabel('km')


% Part B
figure;
surfc(xx,yy,zz)
shading interp
title('Terrian of Baltam')
xlabel('km')
ylabel('km')
zlabel('km')

% Part C
T = -(abs(xx)+abs(yy)+sin(xx)+cos(yy));
figure;
surf(xx,yy,zz,T)
title('Temperature and Terrian of Baltam')
xlabel('km')
ylabel('km')
zlabel('km')
colorbar('YTickLabel',{'Tundra','Freezing','Cold', 'Cool','Neutral','Warm','Hot','Burning','Nuclear'})

%% Problem 3

Z = [exp(i*pi/4) exp(-i*pi/4) .5*exp(i*3*pi/4) .5*exp(-i*3*pi/4) 2*i];
circle = exp(2*i*[1:360]*pi/360)

figure;
plot(Z,'x','MarkerSize',10);
hold on
plot(circle, 'k')
hold on
plot([-2.5,2.5],[0,0],'r:')
hold on
plot([0,0],[-2,2],'r:')
axis equal
axis on


