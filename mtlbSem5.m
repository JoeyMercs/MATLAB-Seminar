% Joseph Mercedes
% Assignment #5

clc; clear all;  close all

%% Problem 1

% Part A
tic
a = conv([1 0 0 0 0 0 0 -3 0 1 5],[0 0 0 5 0 -3 4 -3 0 10 -2])
b = polyval(a,2)
toc

% Part B
tic
c = [1 0 0 0 0 0 0 -3 0 1 5];
d = [0 0 0 5 0 -3 4 -3 0 10 -2];
e = conv(c,d)
f = polyval(e,2)
toc


%% Problem 2

% Part A
    % Part i
    syms x y z
    v = sin(8*x)/(x*(2*x+7)^(1/2));
    dvdx = diff(v)
    % Part ii
    w = (3+4*x)^(1/2);
    integral = int(w)
    % Part iii
    u = (sinh(sin(cos(x))))/((cosh(5*x))^(1/3));
    dudx = diff(u);
    dudx2 = diff(dudx)
% Part B
    % Part i
    syms n
    p = n^7;
    Z1 = ztrans(p)
    % Part ii
    q = exp(-3*n);
    Z2 = ztrans(q)
    % Part iii
    r = (n^2)*(cos(2*n)*exp(-5*n));
    Z3 = ztrans(r)
% Part C
    % Part i
    syms t s a
    g = sin(2*t);
    L1 = laplace(g)
    % Part ii
    h = exp(-4*t);
    L2 = laplace(h)
    % part iii
    k = 1 - exp(-t)*(cos(t)+3.3*sin(t));
    L3 = laplace(k)
    
%% Problem 3

% Part A
hnum = [2 -.5 0 .8];
hden = [1 .4 .3 -.2];

    % Part i
    [Z,P,K] = tf2zp(hnum,hden);
    Zeros = Z
    Poles = P
    zplane(tf2zp(hnum,hden))
    
    % Part ii
    [H,T] = impz(hden,hnum,21)
    figure;
    stem(T,H)
    title('Impulse Response of H Stem plot')
    xlabel('Time (n)')
    ylabel('Impulse')
    
    % Part iii
    n = 0:1:20;
    x = (-.5.^n)
    y = filter(hden,hnum,x)
    figure;
    subplot(2,1,1)
    stem(n,y)
    title('Stem Plot of y(n)')
    xlabel('Time (n)')
    ylabel('y(n)')
    axis([0 20 -1 1])
    subplot(2,1,2)
    stem(n,x)
    title('Stem Plot of x(n)')
    xlabel('Time (n)')
    ylabel('x(n)')
    axis([0 20 -1 1])
    
    % Part iv
    xnum = [1 0];
    xden = [1 .5];
    ynum = conv(hnum,xnum)
    yden = conv(hden,xden)
    [H,T] = impz(yden,ynum,21)
    
% Part B
    
    % Part i
    hnum2 = [10 504 200];
    hden2 = [1 402 40800 80000];
    [H2,W2] = freqs(hnum2,hden2)
    
    figure;
    subplot(2,1,1)
    loglog(W2,abs(H2));
    title('Bode Plot of H(s)')
    ylabel('Magnitude (dB)')
    
    subplot(2,1,2)
    semilogx(W2,angle(H2)*180/pi)
    xlabel('Frequency (rad/sec)')
    ylabel('Phase (deg)')
    
    % Part ii
    hnum3 = [1 200];
    hden3 = [1 1 64];
    [H3,W3] = freqs(hnum3,hden3)
    
    figure;
    subplot(2,1,1)
    loglog(W3,abs(H3))
    title('Bode Plot of H(s)')
    ylabel('Magnitude (dB)')
    
    subplot(2,1,2)
    semilogx(W3,angle(H3)*180/pi)
    xlabel('Frequency (rad/sec)')
    ylabel('Phase (deg)')
    