% Joseph Mercedes
% Assignment #4
% 3/6/13

clc; clear all; close all

%% Problem 1

% Part A
[n,d] = weekday('06-Mar-2053') % Returns Thurday

% Part B
T1 = [2013 3 06 0 0 0]
T2 = [2113 12 25 0 0 0]
e = etime(T2,T1)
D = e/(60*60*24) % Number of Days Elapsed

%% Problem 2

% Part A
cash = 2000;
if cash < 3999;
    fprintf('You Do Not Have Enough Money to Purchase This Apple\n')
else
    fprintf('Here"s Your Apple\n')
end

% Part B
cash = 2000;
acash = 2500; % Additional money from friend
tcash = 4500; % Total Cash
change = tcash-3999;
if tcash < 3999;
    fprintf('You Do Not Have Enough Money to Purchase This Apple\n')
elseif tcash == 3999;
    fprintf('Here"s Your Apple\n')
else
    fprintf('Here"s Your Apple\n Here"s Your Change of $%d\n Have A Great Day\n',change)
end

%% Problem 3

% Part A
myparallel([20 30]) % Returns the Value of 12
myparallel([10 20 30]) % Returns the value 5.4545

% Part B
mypolyval([3 1 4], 2)
mypolyval2([1,1,2],[1,2])

%% Problem 4

% Part A
% Sorry, did not have time for part A

% Part B
tic
for h = 1:300
    for k = 1:500
        A(h,k) = ((h^2)+(k^2)-(5*h^3)*k)/(h+k+3);
    end
end
toc