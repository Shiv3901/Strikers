 function [stats] = gunshot(num, stats)

%function to shot a gunshot to the opponent (modify the stats)

%calling function to make things according to the function
[num, num1] = reassign(num);

%calling function to play the gunshot sound
playsound(2);

%conditional execution for modifying the stats
if stats(num,2) == 0     %If armour of oppo is zero
    %reduce his health by 20, where position 2 is 1 for the health column
    stats(num,1) = stats(num,1) - 20;
else
    %else reduce health by 10 and armour by 5
    %for health position 2 is 1
    stats(num,1) = stats(num,1) - 10;
    %for armour position 2 is 2
    stats(num,2) = stats(num,2) - 5;
end

%increasing 30 Xp of the attacker which is num1 now
%for Xp position 2 is 3
stats(num1,3) = stats(num1,3) + 30;

%returning the modified stats back to where it was called

end