clear; clc;

%driver for the round_game function

%hard coding some input variables
scoreboard = [1,5];
names = ['Random12'; 'Random45'];
names = upper(names);

[scoreboard, num] = round_game(scoreboard,names);

%The driver for this is just to check if the function works fines with the
%various inputs or different inputs