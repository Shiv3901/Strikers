clear; clc;

%driver for canonball function

%First it will show expected output, then the initial stats and observed
%output for all the cases

%initialising the names for hardcoding
names = ['SHIVAM34'; 'DEVANSH3'];

%case 1
%case for checking statistics, and attacker is player 1
%and player 2 armour is less than 50
num = 1; 
stats = [100,100,100; 80,45,50];
exp_out = [100,100,0; 40,20,50];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = canonball(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 2
%case when the attacker is player 2 and the armour is greater than 50
num = 2; %Player 2 is the attacker
stats = [90,60,45; 35,25,100];
exp_out = [50,10,45; 35,25,0];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = canonball(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 3
%case where attacker's Xp is not 100 Xp
num = 1; 
stats = [90,70,10; 30,45,50];
%Expected Output
fprintf("Expected Output:");
fprintf("\nYour Xp must be equal to 100 Xp !!\n");   
fprintf("Try a different attack: ");
pause(2);
%observed output
fprintf("\nObserevd Output:");
stats = canonball(num,stats);
%Then just press control + C to cut out the driver