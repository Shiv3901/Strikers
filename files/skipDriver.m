clear; clc;

%driver for skip function

%First it will show expected output, then the initial stats and observed
%output for all the cases

%initialising the names for hardcoding
names = ['SHIVAM34'; 'DEVANSH3'];

%case 1
%case for checking if the Xp is increased by 40
num = 1; 
stats = [10,90,10; 80,45,50];
exp_out = [10,90,50; 80,45,50];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = skip(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;