function [stats] = sword(num, stats)

%function to attack a sword to the opponent (modify the stats) 

%calling function to make things according to the function
[num, num1] = reassign(num);

%conditional execution for modifying the stats
if stats(num1,3)>=20        %if Xp of the opponent is greater than 20
    %calling function to play the sword sound
    playsound(3);
    if stats(num,2)==0      %If armour of oppo is zero
        %reduce his health by 40, where pos 2 is 1 for the health column
        stats(num,1) = stats(num,1) - 40;
    else
        %else reduce health by 30 and armour by 15
        %for health position 2 is 1
        stats(num,1) = stats(num,1) - 30;
        %for armour position 2 is 2
        stats(num,2) = stats(num,2) - 15;
    end
    %decreasing Xp of the attacker (which is num1 now) for using sword
    %for Xp position 2 is 3
    stats(num1,3) = stats(num1,3) - 20;
else
    playsound(8);   %incorrect input sound
    fprintf("\nYour Xp is less than 20 !!\n");  %display error message 
    fprintf("Try a different attack: ");
    stats = get_attack(num1, stats);  %promting the user again for input
end

%returning the modified stats back to where it was called

end