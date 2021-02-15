clear; clc;

%driver for medical function

%First it will show expected output, then the initial stats and observed
%output for all the cases

%initialising the names for hardcoding
names = ['SHIVAM34'; 'DEVANSH3'];

%case 1
%case for checking statistics, and attacker is player 2
num = 2; 
stats = [100,100,80; 20,65,50];
%health is increased by 30, armour by 10, and Xp by 30
exp_out = [100,100,80; 50,55,20];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = medical(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 2
%case for checking statistics, and attacker is player 1
num = 1; 
stats = [10,10,50; 30,50,40];
%case where armour is less than 20
%health is increased by 20, armour touches zero, and Xp down to just 10
exp_out = [30,0,10; 30,50,40];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = medical(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 3
%case for checking statistics, and attacker is player 1
num = 1; 
stats = [10,50,30; 30,50,40];
%case where armour is greater than 30, and the Xp is less than 40
%health is increased by 20, armour touches 10, and Xp down to 0
exp_out = [30,10,0; 30,50,40];
%Expected Output
fprintf("Expected Output: \n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = medical(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 4
%case for checking statistics, and attacker is player 2
num = 2; 
stats = [30,50,40; 10,20,30];
%case where armour is less than 30, and the Xp is less than 40
%health is increased by 10
exp_out = [30,50,40; 20,20,30];
%Expected Output 
fprintf("Expected Output: \n");
fprintf("Just for helping out, giving 10 health points!!\n");
fprintf("\nBut sorry my friend, you going to die !!\n");
pause(0.5);
colour_stats(exp_out, names);
pause(0.5);
%Initial stats
fprintf("Initial stats: \n");
pause(0.5);
colour_stats(stats, names);
stats = medical(num, stats);
%Observed Output
fprintf("Observed Output: \n");
colour_stats(stats, names);
pause(2);
clc;

%case 5
%case for checking statistics, and attacker is player 1
num = 1; 
stats = [30,70,50; 10,20,30];
%case where armour is less than 30, and the Xp is less than 40
%health is increased by 10 with buzzer sound
exp_out = [30,70,50; 10,20,30];
%Expected Output
fprintf("Expected Output:");
fprintf("\nYour Health is greater than 20 !!\n");   
fprintf("Try a different attack: ");
pause(2);
%observed output
fprintf("\nObserevd Output:");
stats = medical(num,stats);
%Then just press control + C to cut out the driver