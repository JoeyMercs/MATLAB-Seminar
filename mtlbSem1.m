% Joe Mercedes
% 02/06/13

clc; clear all; close all;

% Question 1

% Part A
ANS = (minus((593*plus(6924,exp(0.5))), 285))/9.9
y = sin((3.9*pi)/8.2)^2.7
z = log10(exp(2.5)/25)

% Part B
B = [0;1;2;3;4;5;6;7;8;9;10]
A = [sin((pi*B)/5.5)]
C = A.*A
D = repmat(C,1,11)
E = D^2
F = det(E)

% Part C
Z = (4.3+2.5j)*(3.1-5.1j)
Phase = angle(Z)
Mag = abs(Z)
RatioV = 20*log10(Mag)
RatioP = 10*log10(Mag)
Ratio = mag2db(Mag)

% Question 2

% Part A
RowVector = linspace(0,((4*pi*99)/100),100)
RowVector2 = 0 : (4*pi*99)/10000 : (4*pi*99)/100

% Part B
SquareMatrix = reshape(RowVector,10,10)
Sum = sum(SquareMatrix,2)

% Part C
R = 5 + 10.*rand(6)
R(1:6, 2) % Displays Column 2
R(3,1:6) % Displays Row 3
R(4,4) % Displays Entry 4,4

% Part D
GreaterThan = find(R > 10)

% Part E
K = reshape(R,1,36)
L = fliplr(K)
M = L(17:36);
N = L(1:16);
O = fliplr(N);
P = [M O] % Switched Matrix


% Question 3

RP = 3;
RS = 25;
WS = 2*pi*(10^6);
WP = 2*pi*0.9*(10^6);

Num = acosh(sqrt((10^(RS/10)-1)/(10^(RP/10)-1)));
Dem = acosh(WS/WP);
ANS = Num/Dem;

ANS
Ceiling = ceil(ANS)
