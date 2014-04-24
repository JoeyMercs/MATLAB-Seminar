% Joseph Mercedes
% Assignment #10
% 4/24/13

clear all; close all; clc;

%% Problem 1

% Part A
ssig = 0;
t = linspace(-1,1,5000);
for f=1:50000
    ssig1 = sin(2*pi*f*t);
    ssig = ssig1 + ssig;
end

ssigf = fft(ssig)
figure;
plot(t,ssigf)

%% Part B

Fs = 100000;
Fpass = 10000;
Fstop = 20000;
Apass = 5;
Astop = 50;
Wpass = 2*Fpass/Fs;
Wstop = 2*Fstop/Fs;
n = buttord([Wpass],[Wstop],Apass,Astop);
[b,a] = butter(n,[Wpass]);
[H,W] = freqz(b,a);
f = W.*Fs/2/pi;
butf = filter(b,a,f)

N = 2^15;
butfft = fft(butf,N);
butfft = fftshift(abs(butfft));
BF = Fs.*(-N/2:N/2-1)/N;

figure;
plot(BF,butfft)

%% Part C

Fs = 100000;
Fpass = 25000;
Fstop = 10000;
Astop = 40;
Apass = 2;
Wpass = 2*Fpass/Fs;
Wstop = 2*Fstop/Fs;
n = cheb1ord([Wpass],[Wstop],Apass,Astop);
[b,a] = cheby1(n,Apass,[Wpass],'high');
[H,W] = freqz(b,a);
f = W.*Fs/2/pi;
chebf = filter(b,a,f);

N = 2^15;
chebfft = fft(chebf,N);
chebfft = fftshift(abs(chebfft));
CF = Fs.*(-N/2:N/2-1)/N;

figure;
plot(CF,chebfft)

%% Part D

Fs = 100000;
Fstop1 = 15000;
Fstop2 = 35000;
Apass = 3;
Astop = 60;
Fpass1 = 5000;
Fpass2 = 45000;

Wpass1 = 2*Fpass1/Fs;
Wpass2 = 2*Fpass2/Fs;
Wstop1 = 2*Fstop1/Fs;
Wstop2 = 2*Fstop2/Fs;

n = cheb2ord([Wpass1 Wpass2],[Wstop1,Wstop2],Apass,Astop);
[b,a] = cheby2(n,Astop,[Wpass1 Wpass2],'stop');
f = W.*Fs/2/pi;
chebf = filter(b,a,f);

N = 2^15;
chebfft = fft(chebf,N);
chebfft = fftshift(abs(chebfft));
CF = Fs.*(-N/2:N/2-1)/N;

figure;
plot(CF,chebfft)

%% Part E

Fs = 100000;
Fpass1 = 20000;
Fpass2 = 30000;
Apass = 2;
Astop = 60;
Fstop1 = 15000;
Fstop2 = 35000;

Wpass1 = 2*Fpass1/Fs;
Wpass2 = 2*Fpass2/Fs;
Wstop1 = 2*Fstop1/Fs;
Wstop2 = 2*Fstop2/Fs;

n = ellipord([Wpass1 Wpass2],[Wstop1,Wstop2],Apass,Astop);
[b,a] = ellip(n,Apass,Astop,[Wpass1 Wpass2]);
f = W.*Fs/2/pi;
ellipf = filter(b,a,f);

N = 2^15;
ellipfft = fft(ellipf,N);
ellipfft = fftshift(abs(ellipfft));
EF = Fs.*(-N/2:N/2-1)/N;

figure;
plot(EF,ellipfft)

%% Problem 2

% Part A
t = linspace(0,1,5000);
t = t';
s1 = sin(2.*pi.*t.*261.626);
s2 = sin(2.*pi.*t.*293.665);
s3 = sin(2.*pi.*t.*329.628);
s4 = sin(2.*pi.*t.*349.228);
s5 = sin(2.*pi.*t.*391.995);
s6 = sin(2.*pi.*t.*440);
s7 = sin(2.*pi.*t.*493.883);
s8 = sin(2.*pi.*t.*523.251);
s9 = sin(2.*pi.*t.*587.330);
s10 = sin(2.*pi.*t.*659.255);

y = [3*s2; 3*s2; 3*s2; 4*s5; 4*s4; 4*s3; 2*s8; 2*s10; 2*s9];
sound(y);

% Part C
[b,a] = butter(4,.1,'low');
yy = filter(b,a,y);
sound(yy)