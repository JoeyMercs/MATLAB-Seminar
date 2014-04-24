% Joseph Mercedes
% Assignment #9

clear all; close all; clc;

%% Problem 1

% See attached files

%% Problem 2

% Part A

A = mydate(0,0,1,3,2015);
rollDate(A,5);
%%
B = mydate(12,54,6,23,2018);
rollDate(B,2);

%% Part B

C = mydate(5,34,6,24,2029);
nextLeapYear(C);
%%
D = mydate(3,23,5,2,1998);
nextLeapYear(D);

%% Part  C

F = mydate(4,5,4,6,1990);
daysTillChristmas(F)
%%
G = mydate(5,6,3,23,1982);
daysTillChristmas(G)
%% Part D
display(D);
%%
display(F);

%% Problem 3

J = DataTel;
J.coursePrefix = 'ECE';
J.courseNumber = 110;
J.courseName = 'MATLAB Seminar';
J.professor = 'Fontaine';
J.day = 23;
J.month = 4;
J.year = 2013;
J.minute = 00;
J.hour = 6;
%%
changeDate(J,2,3,3)
%%
changeTime(J,4,0)
%%
changeProf(J,'Hong')
%%
schedulize(J);