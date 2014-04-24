% Joseph Mercedes
% Assignment #2

%% Problem 1

% Part A
bin2dec('11011') % Without Two's Complement
bin2dec('1011') - (2^4) % Using Two's Complement
bin2dec('01011')

% Part B
% 11011.0111 is equal to -4.5625
x = fi(-4.5625,1,6,2,'overflow', 'saturate','roundmode','nearest')
x.bin
x = fi(-4.5625,1,6,2,'overflow','saturate','roundmode','floor')
x.bin
x = fi(-4.5625,1,6,2,'overflow','wrap','roundmode','nearest')
x.bin
x = fi(-4.5625,1,6,2,'overflow','wrap','roundmode','floor')
x.bin

% Part C
% 01011.0110 is equal to 11.3750
x = fi(11.3750,0,6,3,'overflow', 'saturate','roundmode','nearest')
x.bin
x = fi(11.3750,0,6,3,'overflow','saturate','roundmode','floor')
x.bin
x = fi(11.3750,0,6,3,'overflow','wrap','roundmode','nearest')
x.bin
x = fi(11.3750,0,6,3,'overflow','wrap','roundmode','floor')
x.bin

%% Problem 2

% Part A
q1 = {'When' 'will' 'the' 'world' 'end'}
a1 = 5000000

% Part B
q2 = {'Siri,' 'I' 'hate' 'you'}
a2 = {'Okay,' 'I"ll' 'remember' 'that'}

% Part C
q3 = {'I' 'love' 'you'}
a3 = {'You' 'Can"t'}

% Part D
q4 = {'Where' 'can' 'I' 'dump' 'a' 'dead' 'body'}
a4 = struct('place1', {'dumps'}, 'place2', {'metal foundries'}, 'place3', {'swamps'}, 'place4', {'mines'}, 'place5', {'reservoirs'})

% Part E
q = {q1 q2 q3 q4}
a = {a1 a2 a3 a4}
qa = [q;a]
Sentence = [qa{2,2}(2) qa{1,4}(4) qa{2,1} qa{2,4}.place1 qa{1}(1) qa{1,3}(1:3)]

%% Problem 3 
% Part A
(1||0)&&(1||0&&1) % This returns a true statement because (1 or 0 and 1 is 1) and (1 or 0) is 1

% Part B
(2+11)~=(12-9) % This returns a true statement because 13 is not equal to 3

% Part C
12 <= ((9876/543)+(0.2/0.34)+1) % This returns a true statement

% Part D
A = [1 0 1 ; 0 1 0 ; 1 0 1];
B = [3 1 3 ; 0 1 0 ; 0 7 0];
A==B

% Part E
'Cooper Union' & 'is very easy' % This returns a true statement because both have 12 character spaces
