clear; clc;

%driver for sword function

%First it will show expected output, then the initial stats and observed
%output for all the cases

%initialising the names for hardcoding
names = ['SHIVAM34'; 'DEVANSH3'];

%case 1
%case for checking statistics, and attacker is player 1
num = 1; 
stats = [100,100,100; 30,45,50];
%health reduction by 30, armour by 15, and attacker cost 20 Xp
exp_out = [100,100,80; 0,30,50];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = sword(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 2
%case when the attacker is player 2 and the armour is zero
num = 2; %Player 2 is the attacker
stats = [40,0,45; 35,25,20];
%armour reduction by 40, and Xp of the attacker gets reduced by 20 
exp_out = [0,0,45; 35,25,0];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = sword(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 3
%case where attacker's Xp is less than 20 Xp, and attacker is player 1
num = 1; 
stats = [90,70,10; 30,45,50];
%Expected Output is error sound as the attacker Xp is less than 20
fprintf("Expected Output:\n");
fprintf("Your Xp is less than 20 !!\nTry a different attack: \n");
pause(2);
%observed output
fprintf("\nObserevd Output:");
stats = sword(num,stats);
%Then just press control + C to cut out the driver