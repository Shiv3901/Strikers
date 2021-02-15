clear; clc;

%driver for get_attack function

%hard coding needed variables
stats = [90,85,25;85,95,55];

num = 1; %Player 1 is the attacker
fprintf("Enter your attack: ");
stats = get_attack(num,stats);
%you get your input in line

%if the input is not in the range, it must do buzzer sound
%and ask for a different input