% Joseph Mercedes
% Assignment #6
% 3/27/13

clc; clear all; close all;

%% Problem 1

% Part A
syms t
    % Part i
    F1 = cos(50*pi*t);
    F = fourier(F1)
    figure;
    subplot(2,1,1)
    ezplot(F1)
    subplot(2,1,2)
    ezplot(F)
    
    % Part ii
    YY = 2*dirac(t-5)+dirac(t+5);
    FF = fourier(YY)
    figure;
    subplot(2,1,1)
    %ezplot(YY)
    n = -10:.001:10;
    y1 = subs(YY,n);
    plot(n,y1)
    subplot(2,1,2)
    %ezplot(FF)
    y2 = subs(FF,n);
    plot(n,y2)
    
    % Part iii
    YYY = exp(-abs(t));
    FFF = fourier(YYY)
    figure;
    subplot(2,1,1)
    ezplot(YYY)
    subplot(2,1,2)
    ezplot(FFF)
    
% Part B
syms w
    % Part i
    YY1 = 4/(4+(w^2));
    IF1 = ifourier(YY1)
    figure;
    subplot(2,1,1)
    ezplot(YY1)
    subplot(2,1,2)
    ezplot(IF1)
    
    % Part ii
    YY2 = (2^.5)/((pi^.5)*(1 + w^2));
    IF2 = ifourier(YY2)
    figure;
    subplot(2,1,1)
    ezplot(YY2)
    subplot(2,1,2)
    ezplot(IF2)
%%    
% Part C

    % Part i
    fs = 100000000
    t = linspace(0,1000*(1/fs),1000);
    y = 3*sin(20000000*2*pi*t);
    figure;
    plot(t,y)
    
    % Part ii
    F = fft(y,1024)
    
    % Part iii
    F1 = fftshift(abs(F));
    tt = linspace(-fs/2,fs*1023/2048,1024)
    
    Y = 3*sin(20000000*2*pi*tt);
    
    figure;
    subplot(2,1,1)
    plot(tt,Y)
    subplot(2,1,2)
    plot(tt,F1)
    
    % Part iv
    IY = ifft(F)
    figure;
    plot(tt,IY)
    
%% Problem 2

% Part A
    % The following frequencies between 0 and 200MHz would alias in:
    % (-20 + 100) = 80MHz
    % (-20 + 2*100) = 180MHz
    % (20 + 100) = 120MHz
    
% Part B

    fs = 100000000
    t = linspace(0,1000*(1/fs),1000)
    
    % 80MHz
    y80 = 3*sin(80000000*2*pi*t);
    f80 = fft(y80,1024)
    F80 = fftshift(abs(f80));
    tt = linspace(-fs/2,fs*1023/2048,1024)
    Y80 = 3*sin(80000000*2*pi*tt);
    
    figure;
    subplot(2,1,1)
    plot(tt,Y80)
    subplot(2,1,2)
    plot(tt,F80)
    
    % 180MHz
    y180 = 3*sin(180000000*2*pi*t);
    f180 = fft(y180,1024)
    F180 = fftshift(abs(f180));
    tt = linspace(-fs/2,fs*1023/2048,1024)
    Y180 = 3*sin(180000000*2*pi*tt);
    
    figure;
    subplot(2,1,1)
    plot(tt,Y180)
    subplot(2,1,2)
    plot(tt,F180)
    
    % 120MHz
    y120 = 3*sin(120000000*2*pi*t);
    f120 = fft(y120,1024)
    F120 = fftshift(abs(f120));
    tt = linspace(-fs/2,fs*1023/2048,1024)
    Y120 = 3*sin(120000000*2*pi*tt);
    
    figure;
    subplot(2,1,1)
    plot(tt,Y120)
    subplot(2,1,2)
    plot(tt,F120)