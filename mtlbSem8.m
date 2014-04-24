% Joseph Mercedes
% Assignment #8

clear all; close all; clc;

%% Problem 1

A = [2 -1 3 4; 1 0 -2 7; 3 -3 1 5; 2 1 4 4];
B = [9; 11; 8; 10];

solutionMatrix = A\B

%% Problem 2

D = [20 32 43 56 7 34 23 30 72 34 22 25 45 5 23 43 23 21 17 34 45 9 56 34 74 53 13 17 57 49];

% Part A
D_Sorted = sort(D)

% Part B
D_Avg = mean(D)

% Part C
D_Std = std(D)

% Part D
J = 2*D_Std + D_Avg;
E = length(D);
F = repmat(J,1,E);
G = gt(D,F);
twoStds = sum(G)

% Part E
Med = median(D)

% Part F
Covarience = cov(D)

%% Problem 3

X = [0:1:9];
Y = [1 10 49 142 313 586 985 1534 2257 3178];

% Part A
lin = interp1(X,Y,7.77, 'linear')

% Part B
cub = interp1(X,Y,7.77, 'cubic')

% Part C
spl = interp1(X,Y,7.77, 'spline')

% Part D
nbr = interp1(X,Y,7.77, 'nearest')

% Part E
Y2 = 4*7.77^3 + 3*7.77^2 + 2*7.77 + 1
% cubic spline gives the most accurate value

% Part F
P = polyfit(X,Y,3);
line = polyval(P,X);
figure;
plot(X,line)