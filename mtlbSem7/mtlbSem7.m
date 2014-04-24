% Assignment #7
% Joseph Mercedes

clc; clear all; close all;

%% Problem 1
myunit(-5,10)

%% Problem 2
syms F s

% Part A
b = [3 0 8];
a = conv(conv([1,1],[1,4]),[1,5]);
[r,p,k] = residue(b,a)
% H(s) = [20.7500/(s+5)]+[-18.6667/(s+4)]+[0.9167/(s+1)]

F = (3*s^2 + 8)/((s+1)*(s+4)*(s+5))
IL1 = ilaplace(F)

% Part B
b = [2 3 1];
a = conv(conv([1,3],[1,5]),[1,3]);
[r,p,k] = residue(b,a)
% H(s) = [9/(s+5)] + [-7/(s+3)] + [5/(s+3)^2]

F = (2*s^2 + 3*s + 1)/((s+3)*(s+3)*(s+5))
IL2 = ilaplace(F)

% Part C
b = [2 3 1];
a = conv([1,3],[1,3]);
[r,p,k] = residue(b,a)
% H(s) = 2 + [-9/(s+3)] +[10/(s-3)^2]

F = (2*s^2 + 3*s + 1)/((s+3)*(s+3))
IL3 = ilaplace(F)
%% Problem 3
syms F z

% Part A
b = [3 2 4];
a = conv(conv([2,3],[4,-1]),[1,0]);
[r,p,k] = residue(b,a)
% H(z) = [0.3690/(z+1.5)] + [1.3393/(z-0.25)] + [-1.333/z]

F = (3*z^2 + 2*z + 4)/((3 + 2*z)*(4*z - 1));
IZ1 = iztrans(F)

% Part B
b = [1 0];
a = conv(conv(conv([2,1],[2,1]),[3,1]),[1 0]);
[r,p,k] = residue(b,a)
% H(z) = [-3/(z+0.5)] + [-0.5/(z+0.5)^2) + [3/(z+0.3333)]

F = z/((2*z + 1)*(2*z + 1)*(3*z + 1));
IZ2 = iztrans(F)

% Part C
b = [3 2 4];
a = [5 2 1 0];
[r,p,k] = residue(b,a)
% H(z) = [(-1.70+j0.65)/(z-(-0.2+j0.4))] + [(-1.70-0.65)/(z-(-0.2-j0.4))] + [4/z]

F = (3*z^2 + 2*z + 4)/(5*z^2 + 2*z + 1);
IZ3 = iztrans(F)
%% Problem 4

% Part A
A = [0 1; 0 -0.5];
b = [0; 0.001];
c = [0 1];
d = 0;

[b,a] = ss2tf(A,b,c,d)
figure;
freqs(b,a)

% Part B
A = [-2 0 0; 0 -4 5; 0 0 5];
b = [0; 1; 1];
c = [1 1 1];
d = 0;

[b,a] = ss2tf(A,b,c,d)
figure;
freqs(b,a)

% Part C
A = [-9 -33 -51 -26; 1 0 0 0; 0 1 0 0; 0 0 1 0];
b = [1; 0; 0; 0];
c = [0 2 52.5 5];
d = 0;

[b,a] = ss2tf(A,b,c,d)
figure;
freqs(b,a)