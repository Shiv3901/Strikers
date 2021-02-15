function [num, num1] = reassign(num)

%function to reassign the values to change the attacker and oppo

%conditional execution to change whose stats to reduce

%a bit of explanation is that if attacker is player 2 we make it to 
% player 1 to reduce the stats of the opponent
if num == 2
    num = 1;
    num1 = 2;
else
    num = 2;
    num1 = 1;
end
%short sweet explanation is num becomes num1 to clarify

end
