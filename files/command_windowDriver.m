clear;
clc;

%driver to check function command_window

%creating dummy variables to check the functionality
names = ['Shiv3901'; 'Devansh3'];
leaderboard = [1, 6];

%case 1
%for checking for the 2 digit input of stats
stats = [12, 76, 87; 89, 78, 78];
command_window(names,stats,leaderboard);
pause(3);
clc;

%case 2
%for checking for 3 & 1 digit(s)
leaderboard = [4, 5];
stats = [122, 6, 87; 89, 781, 8];
command_window(names,stats,leaderboard);