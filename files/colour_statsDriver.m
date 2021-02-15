clear; clc;

%driver for colour_stats function

%case 1
%for checking for the 2 digit input of stats
names = ['SHcV5d63'; 'Devansh5'];
names = upper(names);
size_stats = 4;
stats = [12, 76, 87; 89, 45, 78];
colour_stats(stats,names,size_stats);
pause(3);
clc;

%case 2
%for checking for the 2 & 1 digit input of stats
names = ['SHiVaM23'; 'Devansh5'];
names = upper(names);
size_stats = 3;
stats = [12, 106, 7; 89, 8, 48];
colour_stats(stats,names,size_stats);
pause(3);
clc;