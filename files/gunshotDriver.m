clear; clc;

%driver for gunshot function

%First it will show expected output, then the initial stats and observed
%output for all the cases

%initialising the names for hardcoding
names = ['SHIVAM34'; 'DEVANSH3'];

%case 1
%case for checking the statisics, and attacker is player 2
num = 2; 
stats = [25,45,50; 100,100,80];
%health will reduce by 10, and armour by 5, and attacker will get 30 Xp
exp_out = [15,40,50; 100,100,110];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = gunshot(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 2
%case when there is no armour, to check if the if loop works
num = 1; %Player 1 is the attacker
stats = [10,70,50; 25,0,50];
%armour will get reduced by 20, and attacker will get 30 Xp
exp_out = [10,70,80; 5,0,50];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = gunshot(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;
